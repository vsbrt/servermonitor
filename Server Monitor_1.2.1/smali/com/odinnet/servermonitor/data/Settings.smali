.class public Lcom/odinnet/servermonitor/data/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static ENABLE_SOUND:Z

.field public static ENABLE_VIBRATE:Z

.field public static INTERVAL:J

.field public static START_ON_BOOT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    .line 5
    sput-boolean v2, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    .line 6
    sput-boolean v2, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_SOUND:Z

    .line 7
    sput-boolean v2, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_VIBRATE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
