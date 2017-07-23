.class public final Lcom/admob/android/ads/y;
.super Landroid/widget/RelativeLayout;
.source "AdMobButtonView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput p3, p0, Lcom/admob/android/ads/y;->b:I

    .line 33
    iput p4, p0, Lcom/admob/android/ads/y;->a:I

    .line 35
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/y;->setClickable(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/y;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/admob/android/ads/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/admob/android/ads/y;->d:F

    .line 41
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    .line 43
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    int-to-float v1, p3

    iget v2, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p4

    iget v3, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 45
    iget-object v1, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, p3

    iget v2, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p4

    iget v3, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    invoke-virtual {p0, p2, v0}, Lcom/admob/android/ads/y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/y;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "AdMobSDK"

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    const-string v1, "AdMobSDK"

    invoke-static {v6, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    if-nez v0, :cond_2

    .line 69
    invoke-direct {p0, v3}, Lcom/admob/android/ads/y;->a(Z)V

    .line 82
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 71
    :cond_2
    if-ne v0, v5, :cond_3

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/admob/android/ads/y;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/admob/android/ads/y;->a:I

    int-to-float v2, v2

    iget v3, p0, Lcom/admob/android/ads/y;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/admob/android/ads/y;->a(Z)V

    goto :goto_0

    .line 74
    :cond_3
    if-ne v0, v3, :cond_4

    .line 75
    invoke-direct {p0, v4}, Lcom/admob/android/ads/y;->a(Z)V

    goto :goto_0

    .line 77
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 78
    invoke-direct {p0, v4}, Lcom/admob/android/ads/y;->a(Z)V

    goto :goto_0
.end method
