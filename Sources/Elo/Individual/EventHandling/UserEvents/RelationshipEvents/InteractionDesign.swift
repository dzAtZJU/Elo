// People will recognize all of the hardwork you have invested, they will appreciate your thoughtfulness and care, and they will sense the humanity of you.
enum InteractionDesign {
    enum Test {
        case Social = "bear://x-callback-url/open-note?id=A84257A1-CE86-425A-B263-97DF0DA11A7D-436-000065D4B49A99DE"
        case Interview = "bear://x-callback-url/open-note?id=A52951EE-901B-45CA-B4F6-C3140F90549E-7434-000002808D978100"
    }
    
    enum DesignPrinciple {
        enum Wayfinding {
            case Where_am_I
            case Whats_nearby
            case Where_can_I_go
            case What_will_I_find_when_I_get_there
            case How_do_I_get_out
        }
        enum Feedback {
            case What_can_I_do
            case What_just_happened
            case What_is_currently_happening
            case What_will_happen_in_the_future
            
            enum Criteria {
                case Clear
                case Timely
                case Directly
            }
            
            enum Example {
                case Status
                case Warning
                case Error
                case Completion
            }
        }
        case Visibility
        case Consistency
        case Respect_Peoples_MentalModel
        case Proximity
        case Grouping
        case Mapping
        case Affordance
        case Progressive_Disclosure
        case Rule_20_80
        case Symmetrical
    }
    
    enum Fact {
        case Busy = "大家都很忙很有目的性，会在礼貌和谐的氛围中，对对方做出判断，哪怕是一个小点不满意也会分手"
    }
}

enum ApplyDesignPrinciple {
    case Principles_as_NorthStar_guiding_you_walking_through
    case They_can_conflict_with_each_other
    case Too_much_of_a_good_thing
    case Relavance_varies
}

enum GreatDesign { // Humanity
    case Stable_Solid_Trustworthy
    case Clear_Helpful_Information
    case Streamlined_Simple_Workflow
    case Delightful
}

// 契合，配合，琢磨对方的意思
enum Intentional {
    case Radical_Simplification
    case Deep_Understanding
    enum Extreme_Focus {
        case Specific
        case Personal
    }
    case Personal_Connection
    enum Direct_Communication {
        case Draw_On_What_People_Know
        case Immerse
        case Extend_To_Unique
    }
}
}
