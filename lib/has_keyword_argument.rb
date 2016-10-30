class Symbol
    def has_keyword_argument? *keyword
        keyword.uniq!
        keyword.each_with_index do |keywd, i|
            unless keywd.is_a? Symbol
                raise ArgumentError, "Expected all `keyword´ to be Symbol, argument #{i} is #{keywd.class}"
            end
        end

        keyreq_params = []

        params = method(self).parameters
        params.each do |param|
            p param
            if param.first == :keyreq
                keyreq_params << param.last
            end
        end

        keyreq_params.must_equal keyreq_params & keyword
    end
end
