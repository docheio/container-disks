# ************************************************************************************************************ #
#                                                                                                              #
#                                                      :::::::::  ::::::::   ::::::::   :::    ::: ::::::::::  #
#  opensuse-leap15.1.Dockerfile                       :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:          #
#                                                    +:+    +:+ +:+    +:+ +:+        +:+    +:+ +:+           #
#  By: se-yukun <yukun@team.anylinks.jp>            +#+    +:+ +#+    +:+ +#+        +#++:++#++ +#++:++#       #
#                                                  +#+    +#+ +#+    +#+ +#+        +#+    +#+ +#+             #
#  Created: 2023/05/01 06:39:12 by se-yukun       #+#    #+# #+#    #+# #+#    #+# #+#    #+# #+#              #
#  Updated: 2023/05/01 16:19:41 by se-yukun      #########  ########   ########  ###    ### ##########.io.     #
#                                                                                                              #
# ************************************************************************************************************ #

FROM scratch
ADD http://opensuse.mirror.liquidtelecom.com/repositories/Cloud:/Images:/Leap_15.1/images/openSUSE-Leap-15.1-OpenStack.x86_64.qcow2 /disk/
