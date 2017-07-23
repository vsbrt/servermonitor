.class public Lcom/admob/android/ads/AdView$a;
.super Ljava/lang/Object;
.source "MyParcelableUtil.java"

# interfaces
.implements Lcom/admob/android/ads/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/AdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 714
    return-void
.end method

.method public static a(Lcom/admob/android/ads/n;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/admob/android/ads/n;->a()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Vector;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<+",
            "Lcom/admob/android/ads/n;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 12
    if-nez p0, :cond_1

    move-object v0, v3

    .line 24
    :cond_0
    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/n;

    .line 17
    if-nez p0, :cond_2

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p0}, Lcom/admob/android/ads/n;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/admob/android/ads/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/AdView;

    .line 722
    if-eqz p0, :cond_0

    .line 724
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->f(Lcom/admob/android/ads/AdView;)V

    .line 726
    :cond_0
    return-void
.end method

.method public final a(Lcom/admob/android/ads/j;)V
    .locals 6

    .prologue
    const-string v0, "AdMobSDK"

    .line 733
    iget-object v0, p0, Lcom/admob/android/ads/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/AdView;

    .line 734
    if-eqz p0, :cond_1

    .line 736
    monitor-enter p0

    .line 739
    :try_start_0
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "AdMobSDK"

    const-string v1, "Received the same ad we already had.  Discarding it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    :goto_0
    monitor-exit p0

    .line 758
    :cond_1
    return-void

    .line 748
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad returned ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->g(Lcom/admob/android/ads/AdView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_3
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->c()Lcom/admob/android/ads/k;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/j;Lcom/admob/android/ads/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
