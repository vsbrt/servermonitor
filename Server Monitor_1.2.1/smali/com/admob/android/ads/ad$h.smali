.class public final Lcom/admob/android/ads/ad$h;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
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
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$h;->a:Ljava/lang/ref/WeakReference;

    .line 476
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/admob/android/ads/ad$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ad;

    .line 480
    if-nez p0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    const-string v1, "replay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 486
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 490
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;Z)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/ad;->h:Z

    .line 492
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;Landroid/content/Context;)V

    goto :goto_0
.end method
