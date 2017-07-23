.class public final enum Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;
.super Ljava/lang/Enum;
.source "ComponentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/data/ComponentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

.field public static final enum SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

.field public static final enum TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    .line 129
    new-instance v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    const-string v1, "SSH"

    invoke-direct {v0, v1, v3}, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->TCP:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->$VALUES:[Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->$VALUES:[Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v0}, [Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    return-object v0
.end method
