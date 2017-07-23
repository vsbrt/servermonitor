.class synthetic Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;
.super Ljava/lang/Object;
.source "ServerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/adapters/ServerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$odinnet$servermonitor$data$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/odinnet/servermonitor/data/Status;->values()[Lcom/odinnet/servermonitor/data/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;->$SwitchMap$com$odinnet$servermonitor$data$Status:[I

    :try_start_0
    sget-object v0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;->$SwitchMap$com$odinnet$servermonitor$data$Status:[I

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;->$SwitchMap$com$odinnet$servermonitor$data$Status:[I

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/odinnet/servermonitor/adapters/ServerListAdapter$1;->$SwitchMap$com$odinnet$servermonitor$data$Status:[I

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
