import matplotlib.pyplot as plt
import numpy as np 

ref_sizes = [
                248956422,
                242193529,
                198295559,
                190214555,
                181538259,
                170805979,
                159345973,
                145138636,
                138394717,
                133797422,
                135086622,
                133275309,
                114364328,
                107043718,
                101991189,
                90338345,
                83257441,
                80373285,
                58617616,
                64444167,
                46709983,
                50818468,
                156040895,
                57227415
            ]
min_counts = [
                1813727,
                1836174,
                1407862,
                1243223,
                1273209,
                1236420,
                1180016,
                1089047,
                911975,
                1082518,
                1068360,
                994769,
                677251,
                681117,
                654921,
                751357,
                766975,
                575791,
                596000,
                574582,
                287631,
                383702,
                928226,
                90179
            ]

Y_X_ratios = []
X_1_ratios = []
Y_1_ratios = []
_n_m_ratios = []

with open("male.log") as f:
    lines = f.read().strip().split("\n")
    for line in lines:
        data = [float(x) for x in line.strip().split()]
        normalized = [sum(min_counts) * data[i]/(min_counts[i]) for i in range(24)]

        Y_X = normalized[-1]/ normalized[-2]
        X_1 = normalized[-2]/ normalized[0]
        Y_1 = normalized[-1]/ normalized[0]
        _n_m= normalized[-2]/ normalized[5]

        Y_X_ratios.append([len(Y_X_ratios), Y_X])
        X_1_ratios.append([len(X_1_ratios), X_1])
        Y_1_ratios.append([len(Y_1_ratios), Y_1])
        _n_m_ratios.append([len(_n_m_ratios), _n_m])
    

Y_X_ratios = np.array(Y_X_ratios)
X_1_ratios = np.array(X_1_ratios)
Y_1_ratios = np.array(Y_1_ratios)
_n_m_ratios = np.array(_n_m_ratios)

fig, ax = plt.subplots()
ax.plot(Y_X_ratios[:,0], Y_X_ratios[:,1], '-r', label='Y:X')
ax.plot(X_1_ratios[:,0], X_1_ratios[:,1], '-g', label='X:1')
ax.plot(Y_1_ratios[:,0], Y_1_ratios[:,1], '-b', label='Y:1')
# ax.plot(_n_m_ratios[:,0], _n_m_ratios[:,1], '-y', label='Y:1')
ax.legend()

plt.savefig("male.png", dpi=250)
Y_X_ratios = []
X_1_ratios = []
Y_1_ratios = []
_n_m_ratios = []

with open("female.log") as f:
    lines = f.read().strip().split("\n")
    for line in lines:
        data = [int(x) for x in line.strip().split()]
        normalized = [data[i]/ref_sizes[i] for i in range(24)]

        Y_X = normalized[-1]/ normalized[-2]
        X_1 = normalized[-2]/ normalized[0]
        Y_1 = normalized[-1]/ normalized[0]
        _n_m= normalized[-2]/ normalized[5]

        Y_X_ratios.append([len(Y_X_ratios), Y_X])
        X_1_ratios.append([len(X_1_ratios), X_1])
        Y_1_ratios.append([len(Y_1_ratios), Y_1])
        _n_m_ratios.append([len(_n_m_ratios), _n_m])


Y_X_ratios = np.array(Y_X_ratios)
X_1_ratios = np.array(X_1_ratios)
Y_1_ratios = np.array(Y_1_ratios)
_n_m_ratios = np.array(_n_m_ratios)

fig, ax = plt.subplots()
ax.plot(Y_X_ratios[:,0], Y_X_ratios[:,1], '-r', label='Y:X')
ax.plot(X_1_ratios[:,0], X_1_ratios[:,1], '-g', label='X:1')
ax.plot(Y_1_ratios[:,0], Y_1_ratios[:,1], '-b', label='Y:1')
# ax.plot(_n_m_ratios[:,0], _n_m_ratios[:,1], '-y', label='Y:1')

ax.legend()
plt.savefig("female.png", dpi=250)
plt.show()