.class final Lcom/admob/android/ads/AdView$g$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/admob/android/ads/k;

.field private synthetic b:Lcom/admob/android/ads/AdView;

.field private synthetic c:Lcom/admob/android/ads/k;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView$g;Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p2, p0, Lcom/admob/android/ads/AdView$g$1;->a:Lcom/admob/android/ads/k;

    iput-object p3, p0, Lcom/admob/android/ads/AdView$g$1;->b:Lcom/admob/android/ads/AdView;

    iput-object p4, p0, Lcom/admob/android/ads/AdView$g$1;->c:Lcom/admob/android/ads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/admob/android/ads/AdView$g$1;->a:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/admob/android/ads/AdView$g$1;->b:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/AdView$g$1;->a:Lcom/admob/android/ads/k;

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->removeView(Landroid/view/View;)V

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView$g$1;->b:Lcom/admob/android/ads/AdView;

    iget-object v1, p0, Lcom/admob/android/ads/AdView$g$1;->c:Lcom/admob/android/ads/k;

    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;

    .line 1588
    iget-object v0, p0, Lcom/admob/android/ads/AdView$g$1;->a:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/admob/android/ads/AdView$g$1;->a:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->e()V

    .line 1593
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1597
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method
