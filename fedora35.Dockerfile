# ********************************************************************************************************************** #
#                                                                                                                        #
#                                                       :::    :::     :::     :::     :::   ::: ::::::::::: ::::::::::  #
#    fedora35.Dockerfile                               :+:   :+:    :+: :+:   :+:     :+:   :+:     :+:     :+:          #
#                                                     +:+  +:+    +:+   +:+  +:+      +:+ +:+      +:+     +:+           #
#    By: codespace <codespace@kalyte.ro>             +#++:++    +#++:++#++: +#+       +#++:       +#+     +#++:++#       #
#                                                   +#+  +#+   +#+     +#+ +#+        +#+        +#+     +#+             #
#    Created: 2023/12/17 16:34:17 by codespace     #+#   #+#  #+#     #+# #+#        #+#        #+#     #+#              #
#    Updated: 2023/12/17 16:34:22 by codespace    ###    ### ###     ### ########## ###        ###     ##########.ro     #
#                                                                                                                        #
# ********************************************************************************************************************** #

FROM scratch
ADD https://mirror.umd.edu/fedora/linux/releases/35/Cloud/x86_64/images/Fedora-Cloud-Base-35-1.2.x86_64.qcow2 /disk/
