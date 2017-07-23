.class public Lcom/admob/android/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdView$g;,
        Lcom/admob/android/ads/AdView$d;,
        Lcom/admob/android/ads/AdView$e;,
        Lcom/admob/android/ads/AdView$a;,
        Lcom/admob/android/ads/AdView$b;,
        Lcom/admob/android/ads/AdView$c;,
        Lcom/admob/android/ads/AdView$f;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static s:Landroid/os/Handler;


# instance fields
.field private b:Lcom/admob/android/ads/k;

.field private c:I

.field private d:Z

.field private e:Lcom/admob/android/ads/AdView$d;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/admob/android/ads/AdListener;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Lcom/admob/android/ads/AdView$a;

.field private q:Lcom/admob/android/ads/j$b;

.field private r:Lcom/admob/android/ads/AdView$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/admob/android/ads/AdView$f;->a:Lcom/admob/android/ads/AdView$f;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/admob/android/ads/AdView$f;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/admob/android/ads/AdView$f;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/high16 v3, -0x1000000

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 323
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    iput-boolean v1, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 325
    sget-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 327
    sput-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    invoke-static {v0}, Lcom/admob/android/ads/j;->a(Landroid/os/Handler;)V

    .line 330
    :cond_0
    iput-object p4, p0, Lcom/admob/android/ads/AdView;->r:Lcom/admob/android/ads/AdView$f;

    .line 332
    sget-object v0, Lcom/admob/android/ads/AdView$f;->a:Lcom/admob/android/ads/AdView$f;

    if-eq p4, v0, :cond_1

    .line 333
    sget-object v0, Lcom/admob/android/ads/j$b;->a:Lcom/admob/android/ads/j$b;

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/j$b;

    .line 337
    :cond_1
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setDescendantFocusability(I)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    .line 339
    invoke-virtual {p0, v6}, Lcom/admob/android/ads/AdView;->setLongClickable(Z)V

    .line 342
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setGravity(I)V

    .line 349
    if-eqz p2, :cond_7

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v1, "testing"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 354
    if-eqz v1, :cond_2

    .line 356
    const-string v1, "AdMobSDK"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    const-string v1, "AdMobSDK"

    const-string v2, "AdView\'s \"testing\" XML attribute has been deprecated and will be ignored.  Please delete it from your XML layout and use AdManager.setTestDevices instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 363
    const-string v2, "textColor"

    invoke-interface {p2, v0, v2, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 364
    if-ltz v2, :cond_3

    .line 366
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setTextColor(I)V

    .line 369
    :cond_3
    const-string v2, "primaryTextColor"

    invoke-interface {p2, v0, v2, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 370
    const-string v3, "secondaryTextColor"

    invoke-interface {p2, v0, v3, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 372
    const-string v4, "keywords"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    .line 374
    const-string v4, "refreshInterval"

    invoke-interface {p2, v0, v4, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 375
    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 377
    const-string v4, "isGoneWithoutAd"

    invoke-interface {p2, v0, v4, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 378
    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setGoneWithoutAd(Z)V

    :cond_4
    move v0, v3

    move v8, v2

    move v2, v1

    move v1, v8

    .line 384
    :goto_0
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 385
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setPrimaryTextColor(I)V

    .line 386
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setSecondaryTextColor(I)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    .line 392
    sget-object v0, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 394
    invoke-static {p1}, Lcom/admob/android/ads/AdView;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    .line 396
    :cond_5
    sget-object v0, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 399
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 400
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 402
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 404
    const-string v1, "Ads by AdMob"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    :goto_1
    return-void

    .line 408
    :cond_6
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    goto :goto_1

    :cond_7
    move v0, v5

    move v1, v5

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    return-object v0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/j;)V
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/AdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v1, "Unhandled exception raised in your AdListener.onReceiveAd."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/AdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v1, "Unhandled exception raised in your AdListener.onReceiveRefreshedAd."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/k;)V

    return-void
.end method

.method private a(Lcom/admob/android/ads/k;)V
    .locals 3

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 1474
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    if-eqz v0, :cond_0

    .line 1476
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1477
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1478
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 1479
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1480
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1481
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1483
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const-string v0, "AdMobSDK"

    .line 949
    monitor-enter p0

    .line 952
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 956
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/admob/android/ads/AdView$d;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$d;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v1, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    sget-object v1, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad refresh scheduled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from now."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 958
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    if-nez v0, :cond_0

    .line 961
    :cond_2
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1639
    :try_start_0
    const-string v0, "org.json.JSONException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1661
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 1652
    :cond_0
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1655
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1661
    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Z)Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    return-object v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41333333    # -0.4f

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/admob/android/ads/ao;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/ao;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/ao;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/admob/android/ads/ao;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ao;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/admob/android/ads/AdView$1;

    invoke-direct {v1, p0, p1}, Lcom/admob/android/ads/AdView$1;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ao;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Z)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/admob/android/ads/AdView$a;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView$a;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    return-object p1
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const-string v1, "AdMobSDK"

    .line 601
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 602
    invoke-static {v0}, Lcom/admob/android/ads/c;->a(Landroid/content/Context;)V

    .line 606
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->m:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "AdMobSDK"

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "AdMobSDK"

    const-string v0, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    if-eqz v0, :cond_2

    .line 616
    const-string v0, "AdMobSDK"

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "AdMobSDK"

    const-string v0, "Ignoring requestFreshAd() because we are requesting an ad right now already."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/AdView;->o:J

    .line 627
    new-instance v0, Lcom/admob/android/ads/AdView$b;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView$b;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView$b;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 971
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admob/android/ads/AdView$d;->a:Z

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    .line 976
    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "AdMobSDK"

    const-string v0, "Cancelled an ad refresh scheduled for the future."

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 5

    .prologue
    const-string v4, "AdMobSDK"

    .line 1022
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1031
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const-string v0, "AdMobSDK"

    const-string v0, "Cannot refresh CPM ads.  Ignoring request to refresh the ad."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/admob/android/ads/AdView;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/AdView$c;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$c;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/admob/android/ads/AdView;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/admob/android/ads/AdView;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/admob/android/ads/AdView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    return v0
.end method

.method static synthetic i(Lcom/admob/android/ads/AdView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    return-void
.end method


# virtual methods
.method final a()Lcom/admob/android/ads/j$b;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/j$b;

    return-object v0
.end method

.method final a(Lcom/admob/android/ads/j;Lcom/admob/android/ads/k;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 773
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 776
    invoke-virtual {p1}, Lcom/admob/android/ads/j;->b()D

    move-result-wide v1

    .line 777
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    .line 779
    iput-boolean v6, p0, Lcom/admob/android/ads/AdView;->d:Z

    .line 780
    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 783
    invoke-direct {p0, v6}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 792
    :goto_0
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 793
    if-eqz v1, :cond_0

    .line 795
    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 798
    :cond_0
    invoke-virtual {p2, p1}, Lcom/admob/android/ads/k;->a(Lcom/admob/android/ads/j;)V

    .line 799
    invoke-virtual {p2, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 800
    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setGravity(I)V

    .line 801
    invoke-virtual {p1, p2}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/k;)V

    .line 804
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->f()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/admob/android/ads/j;->a(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->g()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/admob/android/ads/j;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 807
    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    sget-object v2, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    new-instance v3, Lcom/admob/android/ads/AdView$e;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/admob/android/ads/AdView$e;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    return-void

    .line 787
    :cond_1
    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->d:Z

    goto :goto_0
.end method

.method final b()Lcom/admob/android/ads/AdView$f;
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->r:Lcom/admob/android/ads/AdView$f;

    return-object v0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->e()V

    .line 1623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 1625
    :cond_0
    return-void
.end method

.method public getAdListener()Lcom/admob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/admob/android/ads/AdView;->f:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/admob/android/ads/AdView;->g:I

    return v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    div-int/lit16 v0, v0, 0x3e8

    .line 883
    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/admob/android/ads/AdView;->h:I

    return v0
.end method

.method public getTextColor()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v1, "AdMobSDK"

    .line 1147
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const-string v0, "AdMobSDK"

    const-string v0, "Calling the deprecated method getTextColor!  Please use getPrimaryTextColor and getSecondaryTextColor instead."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v0

    return v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneWithoutAd()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v1, "AdMobSDK"

    .line 1304
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const-string v0, "AdMobSDK"

    const-string v0, "Deprecated method isGoneWithoutAd was called.  See JavaDoc for instructions to remove."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    .line 1448
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1449
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1450
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1458
    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    .line 1459
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1460
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1461
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const-string v4, "AdMobSDK"

    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 421
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    .line 422
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredHeight()I

    move-result v1

    .line 424
    const-string v2, "AdMobSDK"

    invoke-static {v4, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    sget-object v1, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    int-to-float v0, v0

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 433
    int-to-float v0, v0

    const/high16 v1, 0x439b0000    # 310.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 434
    const-string v0, "AdMobSDK"

    invoke-static {v4, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "AdMobSDK"

    const-string v0, "We need to have a minimum width of 320 device independent pixels to show an ad."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 457
    :cond_2
    :goto_0
    return-void

    .line 449
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/k;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1116
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 1125
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1126
    return-void

    .line 1125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFreshAd()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const-string v4, "AdMobSDK"

    .line 558
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->d:Z

    if-eqz v0, :cond_1

    .line 560
    const-string v0, "AdMobSDK"

    invoke-static {v4, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "AdMobSDK"

    const-string v0, "Request interval overridden by the server.  Ignoring requestFreshAd."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/AdView;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 570
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0xd

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 572
    const-string v2, "AdMobSDK"

    invoke-static {v4, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring requestFreshAd.  Called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds since last refresh.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Refreshes must be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/admob/android/ads/AdListener;)V
    .locals 1

    .prologue
    .line 1400
    monitor-enter p0

    .line 1402
    :try_start_0
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    .line 1403
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1221
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->f:I

    .line 1223
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 1224
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 1377
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1380
    if-eqz p1, :cond_0

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 1388
    :goto_0
    return-void

    .line 1386
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGoneWithoutAd(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v1, "AdMobSDK"

    .line 1293
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    const-string v0, "AdMobSDK"

    const-string v0, "Deprecated method setGoneWithoutAd was called.  See JavaDoc for instructions to remove."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    .line 1251
    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 1

    .prologue
    .line 1177
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->g:I

    .line 1178
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 7

    .prologue
    const/16 v5, 0x258

    const/16 v4, 0xd

    const/4 v3, 0x5

    const-string v6, "AdView.setRequestInterval("

    const-string v2, "AdMobSDK"

    .line 901
    mul-int/lit16 v0, p1, 0x3e8

    .line 903
    iget v1, p0, Lcom/admob/android/ads/AdView;->c:I

    if-eq v1, v0, :cond_3

    .line 905
    if-lez p1, :cond_1

    .line 909
    if-ge p1, v4, :cond_4

    .line 912
    const-string v0, "AdMobSDK"

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdView.setRequestInterval("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    const/16 v0, 0x32c8

    .line 926
    :cond_1
    :goto_0
    iput v0, p0, Lcom/admob/android/ads/AdView;->c:I

    .line 929
    if-gtz p1, :cond_2

    .line 932
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    .line 934
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting fresh ads every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_3
    return-void

    .line 917
    :cond_4
    if-le p1, v5, :cond_1

    .line 920
    const-string v0, "AdMobSDK"

    invoke-static {v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 921
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdView.setRequestInterval("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_5
    const v0, 0x927c0

    goto :goto_0
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    .line 1267
    return-void
.end method

.method public setSecondaryTextColor(I)V
    .locals 1

    .prologue
    .line 1205
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->h:I

    .line 1206
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v1, "AdMobSDK"

    .line 1134
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    const-string v0, "AdMobSDK"

    const-string v0, "Calling the deprecated method setTextColor!  Please use setPrimaryTextColor and setSecondaryTextColor instead."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->setPrimaryTextColor(I)V

    .line 1138
    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->setSecondaryTextColor(I)V

    .line 1139
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1336
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 1338
    if-eq v0, p1, :cond_1

    .line 1340
    monitor-enter p0

    .line 1343
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getChildCount()I

    move-result v0

    move v1, v3

    .line 1345
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1347
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1348
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1354
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 1355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1361
    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v3

    .line 1360
    goto :goto_1
.end method
