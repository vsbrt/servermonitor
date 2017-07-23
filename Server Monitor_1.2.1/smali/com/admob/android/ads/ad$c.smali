.class final Lcom/admob/android/ads/ad$c;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ad;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$c;->a:Ljava/lang/ref/WeakReference;

    .line 107
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/admob/android/ads/ad$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ad;

    .line 112
    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lcom/admob/android/ads/ad;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->a()V

    goto :goto_0
.end method
