CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["MWwNnSp3641U3uQryPUJsMSXc3c5PkYxz-ZqVNWM"]
  config.qiniu_secret_key    = ENV["Aeucj-yMSQ1DUNBax_7RLROEpvRkseIFudrPcbsX"]
  config.qiniu_bucket        = ENV["rails_recipes"]
  config.qiniu_bucket_domain = ENV["pouob9prf.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniup.com"  #选择不同的区域时，"up.qiniu.com" 不同

end
