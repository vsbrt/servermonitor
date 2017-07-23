.class public Lcom/odinnet/servermonitor/data/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field public static UPDATING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/odinnet/servermonitor/data/Shared;->UPDATING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
