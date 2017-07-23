.class public Lcom/odinnet/servermonitor/ssh/packets/Packets;
.super Ljava/lang/Object;
.source "Packets.java"


# static fields
.field public static final SSH_DISCONNECT_AUTH_CANCELLED_BY_USER:I = 0xd

.field public static final SSH_DISCONNECT_BY_APPLICATION:I = 0xb

.field public static final SSH_DISCONNECT_COMPRESSION_ERROR:I = 0x6

.field public static final SSH_DISCONNECT_CONNECTION_LOST:I = 0xa

.field public static final SSH_DISCONNECT_HOST_KEY_NOT_VERIFIABLE:I = 0x9

.field public static final SSH_DISCONNECT_HOST_NOT_ALLOWED_TO_CONNECT:I = 0x1

.field public static final SSH_DISCONNECT_ILLEGAL_USER_NAME:I = 0xf

.field public static final SSH_DISCONNECT_KEY_EXCHANGE_FAILED:I = 0x3

.field public static final SSH_DISCONNECT_MAC_ERROR:I = 0x5

.field public static final SSH_DISCONNECT_NO_MORE_AUTH_METHODS_AVAILABLE:I = 0xe

.field public static final SSH_DISCONNECT_PROTOCOL_ERROR:I = 0x2

.field public static final SSH_DISCONNECT_PROTOCOL_VERSION_NOT_SUPPORTED:I = 0x8

.field public static final SSH_DISCONNECT_RESERVED:I = 0x4

.field public static final SSH_DISCONNECT_SERVICE_NOT_AVAILABLE:I = 0x7

.field public static final SSH_DISCONNECT_TOO_MANY_CONNECTIONS:I = 0xc

.field public static final SSH_EXTENDED_DATA_STDERR:I = 0x1

.field public static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field public static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field public static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field public static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field public static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field public static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field public static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field public static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field public static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field public static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field public static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field public static final SSH_MSG_DEBUG:I = 0x4

.field public static final SSH_MSG_DISCONNECT:I = 0x1

.field public static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field public static final SSH_MSG_IGNORE:I = 0x2

.field public static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field public static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field public static final SSH_MSG_KEXINIT:I = 0x14

.field public static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field public static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field public static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST_OLD:I = 0x1e

.field public static final SSH_MSG_NEWKEYS:I = 0x15

.field public static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field public static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field public static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field public static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field public static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field public static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field public static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field public static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field public static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d

.field public static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field public static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34

.field public static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field public static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field public static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field public static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field private static final reverseNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_DISCONNECT"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "SSH_MSG_IGNORE"

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "SSH_MSG_UNIMPLEMENTED"

    aput-object v2, v0, v1

    .line 84
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "SSH_MSG_DEBUG"

    aput-object v2, v0, v1

    .line 85
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "SSH_MSG_SERVICE_REQUEST"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "SSH_MSG_SERVICE_ACCEPT"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "SSH_MSG_KEXINIT"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "SSH_MSG_NEWKEYS"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "SSH_MSG_KEXDH_INIT"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "SSH_MSG_KEXDH_REPLY/SSH_MSG_KEX_DH_GEX_GROUP"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "SSH_MSG_KEX_DH_GEX_INIT"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "SSH_MSG_KEX_DH_GEX_REPLY"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST"

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x32

    const-string v2, "SSH_MSG_USERAUTH_REQUEST"

    aput-object v2, v0, v1

    .line 98
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x33

    const-string v2, "SSH_MSG_USERAUTH_FAILURE"

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x34

    const-string v2, "SSH_MSG_USERAUTH_SUCCESS"

    aput-object v2, v0, v1

    .line 100
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x35

    const-string v2, "SSH_MSG_USERAUTH_BANNER"

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "SSH_MSG_USERAUTH_INFO_REQUEST"

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "SSH_MSG_USERAUTH_INFO_RESPONSE"

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x50

    const-string v2, "SSH_MSG_GLOBAL_REQUEST"

    aput-object v2, v0, v1

    .line 106
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x51

    const-string v2, "SSH_MSG_REQUEST_SUCCESS"

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x52

    const-string v2, "SSH_MSG_REQUEST_FAILURE"

    aput-object v2, v0, v1

    .line 109
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5a

    const-string v2, "SSH_MSG_CHANNEL_OPEN"

    aput-object v2, v0, v1

    .line 110
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5b

    const-string v2, "SSH_MSG_CHANNEL_OPEN_CONFIRMATION"

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "SSH_MSG_CHANNEL_OPEN_FAILURE"

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5d

    const-string v2, "SSH_MSG_CHANNEL_WINDOW_ADJUST"

    aput-object v2, v0, v1

    .line 113
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5e

    const-string v2, "SSH_MSG_CHANNEL_DATA"

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5f

    const-string v2, "SSH_MSG_CHANNEL_EXTENDED_DATA"

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x60

    const-string v2, "SSH_MSG_CHANNEL_EOF"

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x61

    const-string v2, "SSH_MSG_CHANNEL_CLOSE"

    aput-object v2, v0, v1

    .line 117
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x62

    const-string v2, "SSH_MSG_CHANNEL_REQUEST"

    aput-object v2, v0, v1

    .line 118
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x63

    const-string v2, "SSH_MSG_CHANNEL_SUCCESS"

    aput-object v2, v0, v1

    .line 119
    sget-object v0, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x64

    const-string v2, "SSH_MSG_CHANNEL_FAILURE"

    aput-object v2, v0, v1

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessageName(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "res":Ljava/lang/String;
    if-ltz p0, :cond_0

    sget-object v1, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 128
    sget-object v1, Lcom/odinnet/servermonitor/ssh/packets/Packets;->reverseNames:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN MSG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
