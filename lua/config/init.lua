-- Pengecekan apakah plugin manager LazyVim sudah terinstall
if vim.g.loaded_lazyvim == nil then
  print("Error: LazyVim not found. Please install LazyVim.")
  return
end

-- Konfigurasi plugin Wakatime
local wakatime_config = {
  'wakatime/vim-wakatime',
  lazy = false
}

-- Menambahkan plugin Wakatime ke daftar plugin
vim.g.lazyvim_settings = {
  plugins = {
    wakatime = wakatime_config
  }
}

-- Fungsi untuk memeriksa dan mengatur API key Wakatime
local function setup_wakatime_api_key()
  local api_key = 'WAKATIME_API_KEY'

  -- Pengecekan apakah API key sudah diatur sebelumnya
  if api_key == 'WAKATIME_API_KEY' then
    print("Error: Mohon atur API key Wakatime terlebih dahulu.")
    print("Silakan kunjungi https://wakatime.com/settings/account untuk mendapatkan API key Anda.")
    return
  end

  -- Penyimpanan API key ke dalam variabel global untuk digunakan oleh plugin
  vim.g.wakatime_api_key = api_key
end

-- Menjalankan fungsi untuk mengatur API key Wakatime
setup_wakatime_api_key()
