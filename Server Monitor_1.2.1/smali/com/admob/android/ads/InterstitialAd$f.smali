.class final Lcom/admob/android/ads/InterstitialAd$f;
.super Ljava/util/TimerTask;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/InterstitialAd;)V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/InterstitialAd$f;->a:Ljava/lang/ref/WeakReference;

    .line 358
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/InterstitialAd;

    .line 363
    if-eqz p0, :cond_0

    .line 364
    invoke-static {p0}, Lcom/admob/android/ads/InterstitialAd;->a(Lcom/admob/android/ads/InterstitialAd;)V

    .line 366
    :cond_0
    return-void
.end method
