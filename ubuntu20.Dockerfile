# ************************************************************************************************************ #
#                                                                                                              #
#                                                      :::::::::  ::::::::   ::::::::   :::    ::: ::::::::::  #
#  ubuntu20.Dockerfile                                :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:          #
#                                                    +:+    +:+ +:+    +:+ +:+        +:+    +:+ +:+           #
#  By: se-yukun <yukun@team.anylinks.jp>            +#+    +:+ +#+    +:+ +#+        +#++:++#++ +#++:++#       #
#                                                  +#+    +#+ +#+    +#+ +#+        +#+    +#+ +#+             #
#  Created: 2023/05/01 06:39:29 by se-yukun       #+#    #+# #+#    #+# #+#    #+# #+#    #+# #+#              #
#  Updated: 2023/05/01 06:39:30 by se-yukun      #########  ########   ########  ###    ### ##########.io.     #
#                                                                                                              #
# ************************************************************************************************************ #

FROM scratch
ADD https://cloud-images.ubuntu.com/daily/server/focal/current/focal-server-cloudimg-amd64.img /disk/
