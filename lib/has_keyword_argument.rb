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
            if param.first == :keyreq
                keyreq_params << param.last
            end
        end

        unless keyword == keyreq_params
            keyword_product = keyword.permutation.to_a
            keyword = keyword_product[keyword_product.index(keyreq_params)] if keyword_product.include? keyreq_params
        end

        keyreq_params.must_equal keyword
    end
end
