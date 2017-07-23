.class public final enum Lcom/odinnet/servermonitor/data/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/odinnet/servermonitor/data/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/odinnet/servermonitor/data/Status;

.field public static final enum COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

.field public static final enum OFFLINE:Lcom/odinnet/servermonitor/data/Status;

.field public static final enum ONLINE:Lcom/odinnet/servermonitor/data/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/odinnet/servermonitor/data/Status;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/data/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    .line 6
    new-instance v0, Lcom/odinnet/servermonitor/data/Status;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/odinnet/servermonitor/data/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    .line 7
    new-instance v0, Lcom/odinnet/servermonitor/data/Status;

    const-string v1, "COMPONENT_OFFLINE"

    invoke-direct {v0, v1, v4}, Lcom/odinnet/servermonitor/data/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/odinnet/servermonitor/data/Status;

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->ONLINE:Lcom/odinnet/servermonitor/data/Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/odinnet/servermonitor/data/Status;->$VALUES:[Lcom/odinnet/servermonitor/data/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/odinnet/servermonitor/data/Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/odinnet/servermonitor/data/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/odinnet/servermonitor/data/Status;

    return-object p0
.end method

.method public static values()[Lcom/odinnet/servermonitor/data/Status;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/odinnet/servermonitor/data/Status;->$VALUES:[Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0}, [Lcom/odinnet/servermonitor/data/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/odinnet/servermonitor/data/Status;

    return-object v0
.end method
