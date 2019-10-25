function largest_product(series, size)
    if length(series) == 0  &&  size == 0;    return 1;    end

    if size < 0  ||  size > length(series)
        msg = "Argument, size = " * string(size) * " passed to the function, " *
              "largest_product() with argument, series = " * string(series)

        throw(DomainError(msg))
    end


    product_max = 0
    for i = 1 : length(series) - size + 1
        product = 1
        for j = i : i + size - 1
            product *= parse(Int64, series[j])
        end

        if product > product_max;    product_max = product;    end
    end


    product_max # returned
end
