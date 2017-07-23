.class public final Lcom/admob/android/ads/ad$d;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$d;->a:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/admob/android/ads/ad$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ad;

    .line 179
    if-nez p0, :cond_0

    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {p0, v1}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;Z)V

    .line 184
    invoke-static {p0, p2}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;Landroid/view/MotionEvent;)V

    move v0, v1

    .line 185
    goto :goto_0
.end method
