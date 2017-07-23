.class public final Lcom/admob/android/ads/ad$i;
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
    name = "i"
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

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ad;Z)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$i;->a:Ljava/lang/ref/WeakReference;

    .line 136
    iput-boolean p2, p0, Lcom/admob/android/ads/ad$i;->b:Z

    .line 137
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/admob/android/ads/ad$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ad;

    .line 142
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-boolean v1, p0, Lcom/admob/android/ads/ad$i;->b:Z

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, v0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    const-string v2, "skip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/admob/android/ads/ad;->c()V

    goto :goto_0
.end method
