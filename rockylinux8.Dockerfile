# ************************************************************************************************************ #
#                                                                                                              #
#                                                      :::::::::  ::::::::   ::::::::   :::    ::: ::::::::::  #
#  rockylinux8.Dockerfile                             :+:    :+: :+:    :+: :+:    :+: :+:    :+: :+:          #
#                                                    +:+    +:+ +:+    +:+ +:+        +:+    +:+ +:+           #
#  By: se-yukun <yukun@team.anylinks.jp>            +#+    +:+ +#+    +:+ +#+        +#++:++#++ +#++:++#       #
#                                                  +#+    +#+ +#+    +#+ +#+        +#+    +#+ +#+             #
#  Created: 2023/05/01 06:39:12 by se-yukun       #+#    #+# #+#    #+# #+#    #+# #+#    #+# #+#              #
#  Updated: 2023/05/01 17:18:29 by se-yukun      #########  ########   ########  ###    ### ##########.io.     #
#                                                                                                              #
# ************************************************************************************************************ #

FROM scratch
ADD https://download.rockylinux.org/pub/rocky/8/images/x86_64/Rocky-8-GenericCloud.latest.x86_64.qcow2 /disk/