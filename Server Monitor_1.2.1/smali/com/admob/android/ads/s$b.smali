.class final Lcom/admob/android/ads/s$b;
.super Ljava/lang/Object;
.source "AdMobImageCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method