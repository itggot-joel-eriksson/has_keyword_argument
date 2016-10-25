def has_keyword_argument?(method:, keyword:)
    unless method.is_a? Proc
        raise ArgumentError, '`method` must be Proc'
    end

    unless keyword.class == String || keyword.class == Array
        raise ArgumentError, '`keyword` must be String or Array'
    end

    if keyword.is_a? Array
        keyword.each_with_index do |item, i|
            unless item.is_a? String
                raise ArgumentError, "`keyword` is Array but has #{item.class} at [#{i}]. Expected: String"
            end
        end
    end

    output = keyword
    begin
        method.call
    rescue ArgumentError => e
        output = e.message.split(':').first == 'missing keyword' ? e.message.split(':').last : e.message

        #if keyword.is_a? Array
        #    output = flunk("missing keyword: #{keyword.join(': ')}")
        #else
        #    output = flunk("missing keyword: #{keyword}")
        #end
    end

    return output
end

