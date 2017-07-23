.class public final Lcom/admob/android/ads/x;
.super Ljava/lang/Object;
.source "TestLog.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/admob/android/ads/x;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcom/admob/android/ads/x;->a:Z

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    sget-boolean v0, Lcom/admob/android/ads/x;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
