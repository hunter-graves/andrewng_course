class AICourse {
    var points: [(Float64, Float64)] = [(1.0, 3.0), (3.0, 7.0), (4.0, 5.0), (3.0, 12.0), (6.0, 6.0), (8.0, 15.0)]
    
    func costFunction(points: [(Float64, Float64)]) {
        var xInputs: [Float64] {
            return points.map({$0.0})
        }
        var yOutputs: [Float64] {
            return points.map({$0.1})
        }
        print(xInputs.description)
        print(yOutputs.description)
        var wParam: Float64 = 0
        var bParam: Float64 = 0
        var mParam = points.count
        var wPrev: Float64 = 0.0
        var bPrev: Float64 = 0
        var alpha: Float64 = 0.0001
        

        while true {

            let wSum = sumW(wPrev: wPrev, bPrev: bPrev, xInputs: xInputs, yOutputs: yOutputs, mParam: mParam)
            let bSum = sumB(wPrev: wPrev, bPrev: bPrev, xInputs: xInputs, yOutputs: yOutputs, mParam: mParam)
            if (abs(wSum) < 0.01) && (abs(bSum) < 0.01) {
                print("Stopping")
                break
            }
            wParam = wPrev - (alpha * Float64(Float64(1)/Float64(mParam)) * wSum)
            print("current wParam: \(wParam.description)")
            print("wPrev: \(wPrev.description)")
            bParam = bPrev - (alpha * Float64(Float64(1)/Float64(mParam)) * bSum)
            print("current bParam: \(bParam.description)")
            print("bPrev: \(bPrev.description)")

            wPrev = wParam
            bPrev = bParam
        }
        print("f(x) = \(wParam.description)x + \(bParam.description)")
    }
}

func sumW(wPrev: Float64, bPrev: Float64, xInputs: [Float64], yOutputs: [Float64], mParam: Int) -> Float64 {
    var sum: Float64 = 0.0
    var counter = 0
    while true {
        if counter == mParam {
            break
        }
        sum += (((wPrev * xInputs[counter]) + (bPrev) - yOutputs[counter]) * xInputs[counter])
        print("current sumW: \(sum.description)")

        counter += 1
    }
    return sum
}
func sumB(wPrev: Float64, bPrev: Float64, xInputs: [Float64], yOutputs: [Float64], mParam: Int) -> Float64 {
    var sum: Float64 = 0.0
    var counter = 0
    while true {
        if counter == mParam {
            break
        }
        sum += (wPrev * xInputs[counter]) + bPrev - yOutputs[counter]
        print("current sumB: \(sum.description)")
        counter += 1
    }
    return sum
}