def sliding_max(k, arr)
    # arr.each_cons(k).map(&:max)
    arr.each_cons(k).map(){|val| val.max}
end

print sliding_max(3, [1, 3, 5, 7, 9, 2])