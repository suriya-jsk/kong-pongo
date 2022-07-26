-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]


local error = error


local ErrorGeneratorLastHandler = {}


ErrorGeneratorLastHandler.PRIORITY = -1000000
ErrorGeneratorLastHandler.VERSION = "1.0"

function ErrorGeneratorLastHandler:init_worker()
end


function ErrorGeneratorLastHandler:certificate(conf)
  if conf.certificate then
    error("[error-generator-last] certificate")
  end
end


function ErrorGeneratorLastHandler:rewrite(conf)
  if conf.rewrite then
    error("[error-generator-last] rewrite")
  end
end


function ErrorGeneratorLastHandler:preread(conf)
  if conf.preread then
    error("[error-generator-last] preread")
  end
end



function ErrorGeneratorLastHandler:access(conf)
  if conf.access then
    error("[error-generator-last] access")
  end
end


function ErrorGeneratorLastHandler:header_filter(conf)
  if conf.header_filter then
    error("[error-generator-last] header_filter")
  end
end


function ErrorGeneratorLastHandler:body_filter(conf)
  if conf.header_filter then
    error("[error-generator-last] body_filter")
  end
end


function ErrorGeneratorLastHandler:log(conf)
  if conf.log then
    error("[error-generator] body_filter")
  end
end


return ErrorGeneratorLastHandler
