.class final Lcom/admob/android/ads/ad$b;
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
    name = "b"
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
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$b;->a:Ljava/lang/ref/WeakReference;

    .line 159
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/admob/android/ads/ad$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ad;

    .line 163
    if-eqz p0, :cond_0

    .line 164
    invoke-static {p0}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;)V

    .line 165
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->d()V

    .line 167
    :cond_0
    return-void
.end method
