class User < ApplicationRecord
  
  before_save :normalize_phone
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :assignments
  has_many :games, through: :assignments
  has_many :blocks, dependent: :destroy

  enum role: {Refere: 0, Assessor: 1, Assignor: 2, Admin: 3}
  enum grade: {Grassroots: 0, Regional: 1, National: 2, "P.R.O": 3, FIFA: 4}

  def games
    Game.joins(:assignment).where("assignments.center_referee_id = ? OR assignments.assistant_referee_1_id = ? OR assignments.assistant_referee_2_id = ? OR assignments.fourth_official_id = ?", id, id, id, id)
  end

  def written_address
    written_address = "#{address["city"]}, #{address["state"]}, #{address["zip_code"]}"
  end

  def name
    name = "#{first_name&.capitalize} #{last_name&.capitalize} "
  end


  def assigned_games
    Game.joins(:assignment).where('assignments.center_referee_id = ? OR assignments.assistant_referee_1_id = ? OR assignments.assistant_referee_2_id = ? OR assignments.fourth_official_id = ?', id, id, id, id).map { |game| game.teams}
  end
  
  def formatted_cell_phone
    parsed_phone = Phonelib.parse(cell_phone)
    return cell_phone if parsed_phone.invalid?

    formatted =
      if parsed_phone.country_code == "1"
        parsed_phone.full_national
      else
        parsed_phone.full_international
      end
    formatted.gsub!(";", " x")
    formatted
  end

  def formatted_work_phone
    parsed_phone = Phonelib.parse(work_phone)
    return work_phone if parsed_phone.invalid?

    formatted =
      if parsed_phone.country_code == "1"
        parsed_phone.full_national
      else
        parsed_phone.full_international
      end
    formatted.gsub!(";", " x")
    formatted
  end

  def formatted_home_phone
    parsed_phone = Phonelib.parse(home_phone)
    return home_phone if parsed_phone.invalid?

    formatted =
      if parsed_phone.country_code == "1"
        parsed_phone.full_national
      else
        parsed_phone.full_international
      end
    formatted.gsub!(";", " x")
    formatted
  end

  private
  
  def normalize_phone
    self.cell_phone = Phonelib.parse(cell_phone).full_e164.presence
    self.work_phone = Phonelib.parse(work_phone).full_e164.presence
    self.home_phone = Phonelib.parse(home_phone).full_e164.presence
  end
end
