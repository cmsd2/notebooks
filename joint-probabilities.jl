### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 16638d42-4d89-456c-9510-7c4cc133f1cd


# ╔═╡ a2a59e78-ed8e-11f0-9691-37a927497d5f
table = zeros(6,10)

# ╔═╡ b5b33e91-1d14-40ac-9b24-9e4e88a6ab91
table[:,1:2] = [100 0;100 100;100 200;250 0;250 100;250 200]

# ╔═╡ 64fc9d92-e965-405f-a301-4f5b2004a9dc
table[:,3] = [.2;.1;.2;.05;.15;.3]

# ╔═╡ 134b30e3-8ceb-4c5d-a4b0-deafea17103d
table[:,10] = table[:,1] .* table[:,2] .* table[:,3]

# ╔═╡ 181bcf79-72ed-4a29-99c6-ac08f9984536
table[:,4:5] = hcat([table[:,i] .* table[:,3] for i in 1:2]...)

# ╔═╡ 1e8979ac-7201-41d7-8aa1-18521027fdf7
averages = sum(table[:,4:5],dims=1)

# ╔═╡ 9a07475a-e218-43a8-81bf-b0f297480aad
table[:,6:7] = hcat([table[:,i] .- averages[i] for i in 1:2]...)

# ╔═╡ 6a71a26d-e96d-4064-be04-24ae7d90bb24


# ╔═╡ 75fc01c6-5169-4562-8789-15e10d7fbcd1
table[:,8:9] = (table[:,6:7].^2).*table[:,3]

# ╔═╡ 35ba5bcd-e99d-4655-8116-0a5e5a41eb54
table

# ╔═╡ 2cc8f11f-6ad6-4498-ac06-e9c1f4a00d17
variances = sum(table[:,8:9],dims=1)

# ╔═╡ 793c83a9-3dbc-4e33-9693-c05a58a1402f
stddevs = sqrt.(variances)

# ╔═╡ 0d71915e-fb56-4022-99df-6d9ec58f272c
covariance = sum(table[:,10]) - averages[1,1] * averages[1,2]

# ╔═╡ e212829f-ea2e-4dd2-bbf4-7e47d051477d
correlation = covariance / (stddevs[1,1] * stddevs[1,2])

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.3"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╠═16638d42-4d89-456c-9510-7c4cc133f1cd
# ╠═a2a59e78-ed8e-11f0-9691-37a927497d5f
# ╠═b5b33e91-1d14-40ac-9b24-9e4e88a6ab91
# ╠═64fc9d92-e965-405f-a301-4f5b2004a9dc
# ╠═134b30e3-8ceb-4c5d-a4b0-deafea17103d
# ╠═181bcf79-72ed-4a29-99c6-ac08f9984536
# ╠═1e8979ac-7201-41d7-8aa1-18521027fdf7
# ╠═9a07475a-e218-43a8-81bf-b0f297480aad
# ╠═6a71a26d-e96d-4064-be04-24ae7d90bb24
# ╠═75fc01c6-5169-4562-8789-15e10d7fbcd1
# ╠═35ba5bcd-e99d-4655-8116-0a5e5a41eb54
# ╠═2cc8f11f-6ad6-4498-ac06-e9c1f4a00d17
# ╠═793c83a9-3dbc-4e33-9693-c05a58a1402f
# ╠═0d71915e-fb56-4022-99df-6d9ec58f272c
# ╠═e212829f-ea2e-4dd2-bbf4-7e47d051477d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
