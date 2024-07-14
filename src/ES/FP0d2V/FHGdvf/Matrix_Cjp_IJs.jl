
"""
  Coefficient matrices, `ℂⱼᵖ` for analytical results of Shkarofsky integrals:

    Cⱼᵖ = [ûᵦ⁰, ûᵦ¹, ûᵦ², ⋯, ûᵦⁿ] (ℂⱼᵖ × 𝕏ⱼⁿᵐ) [v̂⁰, v̂¹, v̂², ⋯, v̂ᵐ]ᵀ

  where

  Inputs:

  Outputs:
    (nM, mM), M = CjpIL0(L)
    (nM, mM), M = CjpIL2(L)
    (nM, mM), M = CjpJL1(L)
    (nM, mM), M = CjpJLn1(L)
"""

function CjpIL0(L::Int64)

  if L == 0
    return AsizeA(CjpIL0F0L0)
  elseif L == 1
    return AsizeA(CjpIL0F0L1)
  else
    if L == 2
      return AsizeA(CjpIL0F0L2)
    elseif L == 3
      return AsizeA(CjpIL0F0L3)
    elseif L == 4
      return AsizeA(CjpIL0F0L4)
    elseif L == 5
      return AsizeA(CjpIL0F0L5)
    elseif L == 6
      return AsizeA(CjpIL0F0L6)
    elseif L == 7
      return AsizeA(CjpIL0F0L7)
    elseif L == 8
      return AsizeA(CjpIL0F0L8)
    elseif L == 9
      return AsizeA(CjpIL0F0L9)
    elseif L == 10
      return AsizeA(CjpIL0F0L10)
    elseif L == 11
      return AsizeA(CjpIL0F0L11)
    else
      eeerrtt
    end
  end
end

function CjpIL2(L::Int64)

  if L == 0
    return AsizeA(CjpIL2F0L0)
  elseif L == 1
    return AsizeA(CjpIL2F0L1)
  else
    if L == 2
      return AsizeA(CjpIL2F0L2)
    elseif L == 3
      return AsizeA(CjpIL2F0L3)
    elseif L == 4
      return AsizeA(CjpIL2F0L4)
    elseif L == 5
      return AsizeA(CjpIL2F0L5)
    elseif L == 6
      return AsizeA(CjpIL2F0L6)
    elseif L == 7
      return AsizeA(CjpIL2F0L7)
    elseif L == 8
      return AsizeA(CjpIL2F0L8)
    elseif L == 9
      return AsizeA(CjpIL2F0L9)
    elseif L == 10
      return AsizeA(CjpIL2F0L10)
    elseif L == 11
      return AsizeA(CjpIL2F0L11)
    else
      eeerrtt
    end
  end
end

function CjpJL1(L::Int64)

  if L == 0
    return AsizeA(CjpJL1F0L0)
  elseif L == 1
    return AsizeA(CjpJL1F0L1)
  else
    if L == 2
      return AsizeA(CjpJL1F0L2)
    elseif L == 3
      return AsizeA(CjpJL1F0L3)
    elseif L == 4
      return AsizeA(CjpJL1F0L4)
    elseif L == 5
      return AsizeA(CjpJL1F0L5)
    elseif L == 6
      return AsizeA(CjpJL1F0L6)
    elseif L == 7
      return AsizeA(CjpJL1F0L7)
    elseif L == 8
      return AsizeA(CjpJL1F0L8)
    elseif L == 9
      return AsizeA(CjpJL1F0L9)
    elseif L == 10
      return AsizeA(CjpJL1F0L10)
    elseif L == 11
      return AsizeA(CjpJL1F0L11)
    else
      eeerrtt
    end
  end
end

function CjpJLn1(L::Int64)

  if L == 0
    return AsizeA(CjpJLn1F0L0)
  elseif L == 1
    return AsizeA(CjpJLn1F0L1)
  else
    if L == 2
      return AsizeA(CjpJLn1F0L2)
    elseif L == 3
      return AsizeA(CjpJLn1F0L3)
    elseif L == 4
      return AsizeA(CjpJLn1F0L4)
    elseif L == 5
      return AsizeA(CjpJLn1F0L5)
    elseif L == 6
      return AsizeA(CjpJLn1F0L6)
    elseif L == 7
      return AsizeA(CjpJLn1F0L7)
    elseif L == 8
      return AsizeA(CjpJLn1F0L8)
    elseif L == 9
      return AsizeA(CjpJLn1F0L9)
    elseif L == 10
      return AsizeA(CjpJLn1F0L10)
    elseif L == 11
      return AsizeA(CjpJLn1F0L11)
    else
      eeerrtt
    end
  end
end

# `Cjp` from `Mathematics`
function Matrix_mathematics_julia(Cjp)

    Cjp9 = replace(Cjp, "}, {" => "] [", "{{" => "[[", "}}" => "]]")
    return Cjp9 # |> Matrix{Int64}
end

function AsizeA(M::Matrix{T}) where{T}

  return size(M), M
end

# CjpIL0F0L0 = [[1]]                      # size
CjpIL0F0L0 = ones(Int64, 1,1)
CjpIL2F0L0 = [[1,0,1] [0,-1,0] [1,0,0]] 
# CjpJL1F0L0 = []                         # size
CjpJL1F0L0 = zeros(Int64, 0,0)
CjpJLn1F0L0 = [[0,1] [-1,0]] 

CjpIL0F0L1 = [[-1,0,2] [0,-2,0]] 
CjpIL2F0L1 = [[-1,0,4,0,2] [0,-2,0,-2,0] [-1,0,2,0,0] [0,-2,0,0,0]]
CjpJL1F0L1 = [[0] [1]] 
# CjpJLn1F0L1 = [[0,1]]                    # size
CjpJLn1F0L1 = zeros(Int64, 2,1)
CjpJLn1F0L1[:,1] = [0,1]

CjpIL0F0L2 = [[3,0,-2,0,4] [0,6,0,-4,0] [0,0,4,0,0]] 
CjpIL2F0L2 = [[3,0,-4,0,12,0,4] [0,6,0,-8,0,-4,0] [3,0,2,0,4,0,0] [0,6,0,-4,0,0,0] [0,0,4,0,0,0,0]] 
CjpJL1F0L2 = [[-1,0] [0,-2] [2,0]] 
# CjpJLn1F0L2 = [[0,-3]]                    # size
CjpJLn1F0L2 = zeros(Int64, 2,1)
CjpJLn1F0L2[:,1] = [0,-3]

CjpIL0F0L3 = [[-15,0,6,0,-4,0,8] [0,-30,0,12,0,-8,0] [0,0,-24,0,8,0,0] [0,0,0,-8,0,0,0]]
CjpIL2F0L3 = [[-15,0,12,0,-12,0,32,0,8] [0,-30,0,24,0,-24,0,-8,0] [-15,0,-18,0,12,0,8,0,0] [0,-30,0,4,0,-8,0,0,0] [0,0,-24,0,8,0,0,0,0] [0,0,0,-8,0,0,0,0,0]] 
CjpJL1F0L3 = [[3,0,0] [0,6,0] [-2,0,4] [0,-4,0] [4,0,0]] 
CjpJLn1F0L3 = [[5,0,0] [0,10,0] [-10,0,4]]

CjpIL0F0L4 = [[105,0,-30,0,12,0,-8,0,16] [0,210,0,-60,0,24,0,-16,0] [0,0,180,0,-48,0,16,0,0] [0,0,0,80,0,-16,0,0,0] [0,0,0,0,16,0,0,0,0]] 
CjpIL2F0L4 = [[105,0,-60,0,36,0,-32,0,80,0,16] [0,210,0,-120,0,72,0,-64,0,-16,0] [105,0,150,0,-84,0,40,0,16,0,0] [0,210,0,20,0,-8,0,-16,0,0,0] [0,0,180,0,-32,0,16,0,0,0,0] [0,0,0,80,0,-16,0,0,0,0,0] [0,0,0,0,16,0,0,0,0,0,0]] 
CjpJL1F0L4 = [[-15,0,0,0] [0,-30,0,0] [6,0,-24,0] [0,12,0,-8] [-4,0,8,0] [0,-8,0,0] [8,0,0,0]] 
CjpJLn1F0L4 = [[-21,0,0,0] [0,-42,0,0] [14,0,-32,0] [0,28,0,-8] [-28,0,8,0]] 


CjpIL0F0L5 = [[-945,0,210,0,-60,0,24,0,-16,0,32] [0,-1890,0,420,0,-120,0,48,0,-32,0] [0,0,-1680,0,360,0,-96,0,32,0,0] [0,0,0,-840,0,160,0,-32,0,0,0] [0,0,0,0,-240,0,32,0,0,0,0] [0,0,0,0,0,-32,0,0,0,0,0]] 
CjpIL2F0L5 = [[-945,0,420,0,-180,0,96,0,-80,0,192,0,32] [0,-1890,0,840,0,-360,0,192,0,-160,0,-32,0] [-945,0,-1470,0,660,0,-264,0,112,0,32,0,0] [0,-1890,0,-420,0,200,0,-48,0,-32,0,0,0] [0,0,-1680,0,120,0,-32,0,32,0,0,0,0] [0,0,0,-840,0,128,0,-32,0,0,0,0,0] [0,0,0,0,-240,0,32,0,0,0,0,0,0] [0,0,0,0,0,-32,0,0,0,0,0,0,0]] 
CjpJL1F0L5 = [[105,0,0,0,0] [0,210,0,0,0] [-30,0,180,0,0] [0,-60,0,80,0] [12,0,-48,0,16] [0,24,0,-16,0] [-8,0,16,0,0] [0,-16,0,0,0] [16,0,0,0,0]]
CjpJLn1F0L5 = [[135,0,0,0,0] [0,270,0,0,0] [-54,0,228,0,0] [0,-108,0,96,0] [36,0,-80,0,16] [0,72,0,-16,0] [-72,0,16,0,0]]


CjpIL0F0L6 = [[10395,0,-1890,0,420,0,-120,0,48,0,-32,0,64] [0,20790,0,-3780,0,840,0,-240,0,96,0,-64,0] [0,0,18900,0,-3360,0,720,0,-192,0,64,0,0] [0,0,0,10080,0,-1680,0,320,0,-64,0,0,0] [0,0,0,0,3360,0,-480,0,64,0,0,0,0] [0,0,0,0,0,672,0,-64,0,0,0,0,0] [0,0,0,0,0,0,64,0,0,0,0,0,0]] 
CjpIL2F0L6 = [[10395,0,-3780,0,1260,0,-480,0,240,0,-192,0,448,0,64] [0,20790,0,-7560,0,2520,0,-960,0,480,0,-384,0,-64,0] [10395,0,17010,0,-6300,0,2040,0,-720,0,288,0,64,0,0] [0,20790,0,6300,0,-2520,0,720,0,-160,0,-64,0,0,0] [0,0,18900,0,0,0,-240,0,0,0,64,0,0,0,0] [0,0,0,10080,0,-1008,0,192,0,-64,0,0,0,0,0] [0,0,0,0,3360,0,-416,0,64,0,0,0,0,0,0] [0,0,0,0,0,672,0,-64,0,0,0,0,0,0,0] [0,0,0,0,0,0,64,0,0,0,0,0,0,0,0]] 
CjpJL1F0L6 = [[-945,0,0,0,0,0] [0,-1890,0,0,0,0] [210,0,-1680,0,0,0] [0,420,0,-840,0,0] [-60,0,360,0,-240,0] [0,-120,0,160,0,-32] [24,0,-96,0,32,0] [0,48,0,-32,0,0] [-16,0,32,0,0,0] [0,-32,0,0,0,0] [32,0,0,0,0,0]] 
CjpJLn1F0L6 = [[-1155,0,0,0,0,0] [0,-2310,0,0,0,0] [330,0,-2040,0,0,0] [0,660,0,-1000,0,0] [-132,0,552,0,-272,0] [0,-264,0,224,0,-32] [88,0,-192,0,32,0] [0,176,0,-32,0,0] [-176,0,32,0,0,0]] 


CjpIL0F0L7 = [[-135135,0,20790,0,-3780,0,840,0,-240,0,96,0,-64,0,128] [0,-270270,0,41580,0,-7560,0,1680,0,-480,0,192,0,-128,0] [0,0,-249480,0,37800,0,-6720,0,1440,0,-384,0,128,0,0] [0,0,0,-138600,0,20160,0,-3360,0,640,0,-128,0,0,0] [0,0,0,0,-50400,0,6720,0,-960,0,128,0,0,0,0] [0,0,0,0,0,-12096,0,1344,0,-128,0,0,0,0,0] [0,0,0,0,0,0,-1792,0,128,0,0,0,0,0,0] [0,0,0,0,0,0,0,-128,0,0,0,0,0,0,0]] 
CjpIL2F0L7 = [[-135135,0,41580,0,-11340,0,3360,0,-1200,0,576,0,-448,0,1024,0,128] [0,-270270,0,83160,0,-22680,0,6720,0,-2400,0,1152,0,-896,0,-128,0] [-135135,0,-228690,0,71820,0,-19320,0,5520,0,-1824,0,704,0,128,0,0] [0,-270270,0,-97020,0,32760,0,-8400,0,2080,0,-448,0,-128,0,0,0] [0,0,-249480,0,-12600,0,6720,0,-1440,0,128,0,128,0,0,0,0] [0,0,0,-138600,0,8064,0,-672,0,256,0,-128,0,0,0,0,0] [0,0,0,0,-50400,0,4928,0,-704,0,128,0,0,0,0,0,0] [0,0,0,0,0,-12096,0,1216,0,-128,0,0,0,0,0,0,0] [0,0,0,0,0,0,-1792,0,128,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,-128,0,0,0,0,0,0,0,0,0]] 
CjpJL1F0L7 = [[10395,0,0,0,0,0,0] [0,20790,0,0,0,0,0] [-1890,0,18900,0,0,0,0] [0,-3780,0,10080,0,0,0] [420,0,-3360,0,3360,0,0] [0,840,0,-1680,0,672,0] [-120,0,720,0,-480,0,64] [0,-240,0,320,0,-64,0] [48,0,-192,0,64,0,0] [0,96,0,-64,0,0,0] [-32,0,64,0,0,0,0] [0,-64,0,0,0,0,0] [64,0,0,0,0,0,0]] 
CjpJLn1F0L7 = [[12285,0,0,0,0,0,0] [0,24570,0,0,0,0,0] [-2730,0,22260,0,0,0,0] [0,-5460,0,11760,0,0,0] [780,0,-4800,0,3840,0,0] [0,1560,0,-2320,0,736,0] [-312,0,1296,0,-608,0,64] [0,-624,0,512,0,-64,0] [208,0,-448,0,64,0,0] [0,416,0,-64,0,0,0] [-416,0,64,0,0,0,0]] 

CjpIL0F0L8 = [[2027025,0,-270270,0,41580,0,-7560,0,1680,0,-480,0,192,0,-128,0,256] [0,4054050,0,-540540,0,83160,0,-15120,0,3360,0,-960,0,384,0,-256,0] [0,0,3783780,0,-498960,0,75600,0,-13440,0,2880,0,-768,0,256,0,0] [0,0,0,2162160,0,-277200,0,40320,0,-6720,0,1280,0,-256,0,0,0] [0,0,0,0,831600,0,-100800,0,13440,0,-1920,0,256,0,0,0,0] [0,0,0,0,0,221760,0,-24192,0,2688,0,-256,0,0,0,0,0] [0,0,0,0,0,0,40320,0,-3584,0,256,0,0,0,0,0,0] [0,0,0,0,0,0,0,4608,0,-256,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0]] 
CjpIL2F0L8 = [[2027025,0,-540540,0,124740,0,-30240,0,8400,0,-2880,0,1344,0,-1024,0,2304,0,256] [0,4054050,0,-1081080,0,249480,0,-60480,0,16800,0,-5760,0,2688,0,-2048,0,-256,0] [2027025,0,3513510,0,-956340,0,219240,0,-52080,0,13920,0,-4416,0,1664,0,256,0,0] [0,4054050,0,1621620,0,-471240,0,105840,0,-23520,0,5440,0,-1152,0,-256,0,0,0] [0,0,3783780,0,332640,0,-126000,0,26880,0,-4800,0,512,0,256,0,0,0,0] [0,0,0,2162160,0,-55440,0,-8064,0,1344,0,256,0,-256,0,0,0,0,0] [0,0,0,0,831600,0,-60480,0,6272,0,-1152,0,256,0,0,0,0,0,0] [0,0,0,0,0,221760,0,-19584,0,2176,0,-256,0,0,0,0,0,0,0] [0,0,0,0,0,0,40320,0,-3328,0,256,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,4608,0,-256,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0]] 
CjpJL1F0L8 = [[-135135,0,0,0,0,0,0,0] [0,-270270,0,0,0,0,0,0] [20790,0,-249480,0,0,0,0,0] [0,41580,0,-138600,0,0,0,0] [-3780,0,37800,0,-50400,0,0,0] [0,-7560,0,20160,0,-12096,0,0] [840,0,-6720,0,6720,0,-1792,0] [0,1680,0,-3360,0,1344,0,-128] [-240,0,1440,0,-960,0,128,0] [0,-480,0,640,0,-128,0,0] [96,0,-384,0,128,0,0,0] [0,192,0,-128,0,0,0,0] [-64,0,128,0,0,0,0,0] [0,-128,0,0,0,0,0,0] [128,0,0,0,0,0,0,0]] 
CjpJLn1F0L8 = [[-155925,0,0,0,0,0,0,0] [0,-311850,0,0,0,0,0,0] [28350,0,-287280,0,0,0,0,0] [0,56700,0,-158760,0,0,0,0] [-6300,0,51240,0,-57120,0,0,0] [0,-12600,0,26880,0,-13440,0,0] [1800,0,-11040,0,8640,0,-1920,0] [0,3600,0,-5280,0,1600,0,-128] [-720,0,2976,0,-1344,0,128,0] [0,-1440,0,1152,0,-128,0,0] [480,0,-1024,0,128,0,0,0] [0,960,0,-128,0,0,0,0] [-960,0,128,0,0,0,0,0]] 

CjpIL0F0L9 = [[-34459425,0,4054050,0,-540540,0,83160,0,-15120,0,3360,0,-960,0,384,0,-256,0,512] [0,-68918850,0,8108100,0,-1081080,0,166320,0,-30240,0,6720,0,-1920,0,768,0,-512,0] [0,0,-64864800,0,7567560,0,-997920,0,151200,0,-26880,0,5760,0,-1536,0,512,0,0] [0,0,0,-37837800,0,4324320,0,-554400,0,80640,0,-13440,0,2560,0,-512,0,0,0] [0,0,0,0,-15135120,0,1663200,0,-201600,0,26880,0,-3840,0,512,0,0,0,0] [0,0,0,0,0,-4324320,0,443520,0,-48384,0,5376,0,-512,0,0,0,0,0] [0,0,0,0,0,0,-887040,0,80640,0,-7168,0,512,0,0,0,0,0,0] [0,0,0,0,0,0,0,-126720,0,9216,0,-512,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-11520,0,512,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,-512,0,0,0,0,0,0,0,0,0]] 
CjpIL2F0L9 = [[-34459425,0,8108100,0,-1621620,0,332640,0,-75600,0,20160,0,-6720,0,3072,0,-2304,0,5120,0,512] [0,-68918850,0,16216200,0,-3243240,0,665280,0,-151200,0,40320,0,-13440,0,6144,0,-4608,0,-512,0] [-34459425,0,-60810750,0,14594580,0,-2910600,0,589680,0,-131040,0,33600,0,-10368,0,3840,0,512,0,0] [0,-68918850,0,-29729700,0,7567560,0,-1496880,0,292320,0,-60480,0,13440,0,-2816,0,-512,0,0,0] [0,0,-64864800,0,-7567560,0,2328480,0,-453600,0,80640,0,-13440,0,1536,0,512,0,0,0,0] [0,0,0,-37837800,0,0,0,332640,0,-64512,0,8064,0,0,0,-512,0,0,0,0,0] [0,0,0,0,-15135120,0,776160,0,-40320,0,5376,0,-1792,0,512,0,0,0,0,0,0] [0,0,0,0,0,-4324320,0,316800,0,-29952,0,3840,0,-512,0,0,0,0,0,0,0] [0,0,0,0,0,0,-887040,0,69120,0,-6144,0,512,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,-126720,0,8704,0,-512,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-11520,0,512,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,-512,0,0,0,0,0,0,0,0,0,0,0]] 
CjpJL1F0L9 = [[2027025,0,0,0,0,0,0,0,0] [0,4054050,0,0,0,0,0,0,0] [-270270,0,3783780,0,0,0,0,0,0] [0,-540540,0,2162160,0,0,0,0,0] [41580,0,-498960,0,831600,0,0,0,0] [0,83160,0,-277200,0,221760,0,0,0] [-7560,0,75600,0,-100800,0,40320,0,0] [0,-15120,0,40320,0,-24192,0,4608,0] [1680,0,-13440,0,13440,0,-3584,0,256] [0,3360,0,-6720,0,2688,0,-256,0] [-480,0,2880,0,-1920,0,256,0,0] [0,-960,0,1280,0,-256,0,0,0] [192,0,-768,0,256,0,0,0,0] [0,384,0,-256,0,0,0,0,0] [-128,0,256,0,0,0,0,0,0] [0,-256,0,0,0,0,0,0,0] [256,0,0,0,0,0,0,0,0]]
CjpJLn1F0L9 = [[2297295,0,0,0,0,0,0,0,0] [0,4594590,0,0,0,0,0,0,0] [-353430,0,4282740,0,0,0,0,0,0] [0,-706860,0,2439360,0,0,0,0,0] [64260,0,-650160,0,932400,0,0,0,0] [0,128520,0,-357840,0,245952,0,0,0] [-14280,0,115920,0,-127680,0,43904,0,0] [0,-28560,0,60480,0,-29568,0,4864,0] [4080,0,-24960,0,19200,0,-4096,0,256] [0,8160,0,-11840,0,3456,0,-256,0] [-1632,0,6720,0,-2944,0,256,0,0] [0,-3264,0,2560,0,-256,0,0,0] [1088,0,-2304,0,256,0,0,0,0] [0,2176,0,-256,0,0,0,0,0] [-2176,0,256,0,0,0,0,0,0]] 

CjpIL0F0L10 = [[-654729075,0,68918850,0,-8108100,0,1081080,0,-166320,0,30240,0,-6720,0,1920,0,-768,0,512,0,-1024] [0,1309458150,0,-137837700,0,16216200,0,-2162160,0,332640,0,-60480,0,13440,0,-3840,0,1536,0,-1024,0] [0,0,-1240539300,0,129729600,0,-15135120,0,1995840,0,-302400,0,53760,0,-11520,0,3072,0,-1024,0,0] [0,0,0,735134400,0,-75675600,0,8648640,0,-1108800,0,161280,0,-26880,0,5120,0,-1024,0,0,0] [0,0,0,0,-302702400,0,30270240,0,-3326400,0,403200,0,-53760,0,7680,0,-1024,0,0,0,0] [0,0,0,0,0,90810720,0,-8648640,0,887040,0,-96768,0,10752,0,-1024,0,0,0,0,0] [0,0,0,0,0,0,-20180160,0,1774080,0,-161280,0,14336,0,-1024,0,0,0,0,0,0] [0,0,0,0,0,0,0,3294720,0,-253440,0,18432,0,-1024,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-380160,0,23040,0,-1024,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,28160,0,-1024,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,-1024,0,0,0,0,0,0,0,0,0,0]] 
CjpIL2F0L10 = [[-654729075,0,137837700,0,-24324300,0,4324320,0,-831600,0,181440,0,-47040,0,15360,0,-6912,0,5120,0,-11264,0,-1024] [0,1309458150,0,-275675400,0,48648600,0,-8648640,0,1663200,0,-362880,0,94080,0,-30720,0,13824,0,-10240,0,-1024,0] [-654729075,0,-1171620450,0,251351100,0,-44324280,0,7817040,0,-1481760,0,315840,0,-78720,0,23808,0,-8704,0,-1024,0,0] [0,1309458150,0,597296700,0,-135135000,0,23783760,0,-4102560,0,745920,0,-147840,0,32000,0,-6656,0,-1024,0,0,0] [0,0,-1240539300,0,-172972800,0,45405360,0,-7983360,0,1310400,0,-215040,0,34560,0,-4096,0,-1024,0,0,0,0] [0,0,0,735134400,0,15135120,0,-8648640,0,1552320,0,-225792,0,26880,0,-1024,0,-1024,0,0,0,0,0] [0,0,0,0,-302702400,0,10090080,0,221760,0,-80640,0,3584,0,2560,0,-1024,0,0,0,0,0,0] [0,0,0,0,0,90810720,0,-5353920,0,380160,0,-41472,0,6656,0,-1024,0,0,0,0,0,0,0] [0,0,0,0,0,0,-20180160,0,1393920,0,-115200,0,11264,0,-1024,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,3294720,0,-225280,0,16384,0,-1024,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-380160,0,22016,0,-1024,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,28160,0,-1024,0,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,-1024,0,0,0,0,0,0,0,0,0,0,0,0]] 
CjpJL1F0L10 = [[34459425,0,0,0,0,0,0,0,0,0] [0,-68918850,0,0,0,0,0,0,0,0] [-4054050,0,64864800,0,0,0,0,0,0,0] [0,8108100,0,-37837800,0,0,0,0,0,0] [540540,0,-7567560,0,15135120,0,0,0,0,0] [0,-1081080,0,4324320,0,-4324320,0,0,0,0] [-83160,0,997920,0,-1663200,0,887040,0,0,0] [0,166320,0,-554400,0,443520,0,-126720,0,0] [15120,0,-151200,0,201600,0,-80640,0,11520,0] [0,-30240,0,80640,0,-48384,0,9216,0,-512] [-3360,0,26880,0,-26880,0,7168,0,-512,0] [0,6720,0,-13440,0,5376,0,-512,0,0] [960,0,-5760,0,3840,0,-512,0,0,0] [0,-1920,0,2560,0,-512,0,0,0,0] [-384,0,1536,0,-512,0,0,0,0,0] [0,768,0,-512,0,0,0,0,0,0] [256,0,-512,0,0,0,0,0,0,0] [0,-512,0,0,0,0,0,0,0,0] [-512,0,0,0,0,0,0,0,0,0]] 
CjpJLn1F0L10 = [[38513475,0,0,0,0,0,0,0,0,0] [0,-77026950,0,0,0,0,0,0,0,0] [-5135130,0,72432360,0,0,0,0,0,0,0] [0,10270260,0,-42162120,0,0,0,0,0,0] [790020,0,-9563400,0,16798320,0,0,0,0,0] [0,-1580040,0,5433120,0,-4767840,0,0,0,0] [-143640,0,1451520,0,-2066400,0,967680,0,0,0] [0,287280,0,-796320,0,540288,0,-135936,0,0] [31920,0,-258720,0,282240,0,-94976,0,12032,0] [0,-63840,0,134400,0,-64512,0,10240,0,-512] [-9120,0,55680,0,-42240,0,8704,0,-512,0] [0,18240,0,-26240,0,7424,0,-512,0,0] [3648,0,-14976,0,6400,0,-512,0,0,0] [0,-7296,0,5632,0,-512,0,0,0,0] [-2432,0,5120,0,-512,0,0,0,0,0] [0,4864,0,-512,0,0,0,0,0,0] [4864,0,-512,0,0,0,0,0,0,0]] 

CjpIL0F0L11 = [[-13749310575,0,1309458150,0,-137837700,0,16216200,0,-2162160,0,332640,0,-60480,0,13440,0,-3840,0,1536,0,-1024,0,2048] [0,-27498621150,0,2618916300,0,-275675400,0,32432400,0,-4324320,0,665280,0,-120960,0,26880,0,-7680,0,3072,0,-2048,0] [0,0,-26189163000,0,2481078600,0,-259459200,0,30270240,0,-3991680,0,604800,0,-107520,0,23040,0,-6144,0,2048,0,0] [0,0,0,-15713497800,0,1470268800,0,-151351200,0,17297280,0,-2217600,0,322560,0,-53760,0,10240,0,-2048,0,0,0] [0,0,0,0,-6616209600,0,605404800,0,-60540480,0,6652800,0,-806400,0,107520,0,-15360,0,2048,0,0,0,0] [0,0,0,0,0,-2058376320,0,181621440,0,-17297280,0,1774080,0,-193536,0,21504,0,-2048,0,0,0,0,0] [0,0,0,0,0,0,-484323840,0,40360320,0,-3548160,0,322560,0,-28672,0,2048,0,0,0,0,0,0] [0,0,0,0,0,0,0,-86486400,0,6589440,0,-506880,0,36864,0,-2048,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-11531520,0,760320,0,-46080,0,2048,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,-1098240,0,56320,0,-2048,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,-67584,0,2048,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,0,-2048,0,0,0,0,0,0,0,0,0,0,0]] 
CjpIL2F0L11 = [[-13749310575,0,2618916300,0,-413513100,0,64864800,0,-10810800,0,1995840,0,-423360,0,107520,0,-34560,0,15360,0,-11264,0,24576,0,2048] [0,-27498621150,0,5237832600,0,-827026200,0,129729600,0,-21621600,0,3991680,0,-846720,0,215040,0,-69120,0,30720,0,-22528,0,-2048,0] [-13749310575,0,-24879704850,0,4824319500,0,-762161400,0,118918800,0,-19625760,0,3568320,0,-739200,0,180480,0,-53760,0,19456,0,2048,0,0] [0,-27498621150,0,-13094581500,0,2664862200,0,-421621200,0,64864800,0,-10422720,0,1814400,0,-349440,0,74240,0,-15360,0,-2048,0,0,0] [0,0,-26189163000,0,-4135131000,0,951350400,0,-151351200,0,22619520,0,-3427200,0,537600,0,-84480,0,10240,0,2048,0,0,0,0] [0,0,0,-15713497800,0,-588107520,0,211891680,0,-34594560,0,4878720,0,-645120,0,75264,0,-4096,0,-2048,0,0,0,0,0] [0,0,0,0,-6616209600,0,121080960,0,20180160,0,-3991680,0,483840,0,-35840,0,-3072,0,2048,0,0,0,0,0,0] [0,0,0,0,0,-2058376320,0,95135040,0,-4118400,0,253440,0,-46080,0,11264,0,-2048,0,0,0,0,0,0,0] [0,0,0,0,0,0,-484323840,0,28828800,0,-2027520,0,184320,0,-20480,0,2048,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,-86486400,0,5491200,0,-394240,0,30720,0,-2048,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,-11531520,0,692736,0,-41984,0,2048,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,-1098240,0,54272,0,-2048,0,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,-67584,0,2048,0,0,0,0,0,0,0,0,0,0,0,0] [0,0,0,0,0,0,0,0,0,0,0,-2048,0,0,0,0,0,0,0,0,0,0,0,0,0]] 
CjpJL1F0L11 = [[654729075,0,0,0,0,0,0,0,0,0,0] [0,1309458150,0,0,0,0,0,0,0,0,0] [-68918850,0,1240539300,0,0,0,0,0,0,0,0] [0,-137837700,0,735134400,0,0,0,0,0,0,0] [8108100,0,-129729600,0,302702400,0,0,0,0,0,0] [0,16216200,0,-75675600,0,90810720,0,0,0,0,0] [-1081080,0,15135120,0,-30270240,0,20180160,0,0,0,0] [0,-2162160,0,8648640,0,-8648640,0,3294720,0,0,0] [166320,0,-1995840,0,3326400,0,-1774080,0,380160,0,0] [0,332640,0,-1108800,0,887040,0,-253440,0,28160,0] [-30240,0,302400,0,-403200,0,161280,0,-23040,0,1024] [0,-60480,0,161280,0,-96768,0,18432,0,-1024,0] [6720,0,-53760,0,53760,0,-14336,0,1024,0,0] [0,13440,0,-26880,0,10752,0,-1024,0,0,0] [-1920,0,11520,0,-7680,0,1024,0,0,0,0] [0,-3840,0,5120,0,-1024,0,0,0,0,0] [768,0,-3072,0,1024,0,0,0,0,0,0] [0,1536,0,-1024,0,0,0,0,0,0,0] [-512,0,1024,0,0,0,0,0,0,0,0] [0,-1024,0,0,0,0,0,0,0,0,0] [1024,0,0,0,0,0,0,0,0,0,0]] 
CjpJLn1F0L11 = [[723647925,0,0,0,0,0,0,0,0,0,0] [0,1447295850,0,0,0,0,0,0,0,0,0] [-85135050,0,1370268900,0,0,0,0,0,0,0,0] [0,-170270100,0,810810000,0,0,0,0,0,0,0] [11351340,0,-159999840,0,332972640,0,0,0,0,0,0] [0,22702680,0,-92972880,0,99459360,0,0,0,0,0] [-1746360,0,21122640,0,-36923040,0,21954240,0,0,0,0] [0,-3492720,0,11975040,0,-10422720,0,3548160,0,0,0] [317520,0,-3205440,0,4536000,0,-2096640,0,403200,0,0] [0,635040,0,-1753920,0,1177344,0,-290304,0,29184,0] [-70560,0,571200,0,-618240,0,204288,0,-25088,0,1024] [0,-141120,0,295680,0,-139776,0,21504,0,-1024,0] [20160,0,-122880,0,92160,0,-18432,0,1024,0,0] [0,40320,0,-57600,0,15872,0,-1024,0,0,0] [-8064,0,33024,0,-13824,0,1024,0,0,0,0] [0,-16128,0,12288,0,-1024,0,0,0,0,0] [5376,0,-11264,0,1024,0,0,0,0,0,0] [0,10752,0,-1024,0,0,0,0,0,0,0] [-10752,0,1024,0,0,0,0,0,0,0,0]] 

