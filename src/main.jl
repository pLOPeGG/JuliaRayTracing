using Printf


function main()
    image_width, image_height = 256, 256
    println("P3\n$(image_width) $(image_height)\n255")

    for j in image_height-1:-1:0
        @printf Base.stderr "\rScanlines remaining: %5d" j
        flush(Base.stderr)
        for i in 0:image_width-1


            r = i / (image_width-1)
            g = j / (image_height-1)
            b = 0.25

            ir = floor(255.999 * r)
            ig = floor(255.999 * g)
            ib = floor(255.999 * b)

            println("$(ir) $(ig) $(ib)")

        end
    end
    println(Base.stderr, "\nDone.")
end


main()