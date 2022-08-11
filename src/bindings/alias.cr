# Some aliases for the sake of following crystal's api.

module JavaScriptCore
  class Value < GObject::Object
    # Same as `.to_string`.
    def to_s : ::String
      to_string
    end

    # Same as `.to_boolean`.
    def to_bool : ::Bool
      to_boolean
    end

    # Same as `.to_double`.
    def to_f : ::Float64
      to_double
    end

    # Same as `.to_int32`.
    def to_i : ::Int32
      to_int32
    end
  end
end
