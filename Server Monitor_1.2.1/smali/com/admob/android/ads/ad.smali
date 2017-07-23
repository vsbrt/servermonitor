.class public final Lcom/admob/android/ads/ad;
.super Lcom/admob/android/ads/ac;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Lcom/admob/android/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/ad$e;,
        Lcom/admob/android/ads/ad$h;,
        Lcom/admob/android/ads/ad$f;,
        Lcom/admob/android/ads/ad$g;,
        Lcom/admob/android/ads/ad$d;,
        Lcom/admob/android/ads/ad$b;,
        Lcom/admob/android/ads/ad$i;,
        Lcom/admob/android/ads/ad$c;,
        Lcom/admob/android/ads/ad$a;
    }
.end annotation


# instance fields
.field d:Landroid/view/ViewGroup;

.field e:Landroid/widget/VideoView;

.field f:Lcom/admob/android/ads/d;

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/admob/android/ads/ab;

.field private l:J

.field private m:Landroid/widget/Button;

.field private n:Ljava/lang/Runnable;

.field private o:Z

.field private p:Lcom/admob/android/ads/ad$b;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/admob/android/ads/ac;-><init>(Landroid/content/Context;)V

    .line 204
    iput-boolean v1, p0, Lcom/admob/android/ads/ad;->i:Z

    .line 205
    iput-boolean v1, p0, Lcom/admob/android/ads/ad;->j:Z

    .line 217
    iput-object p2, p0, Lcom/admob/android/ads/ad;->q:Ljava/lang/ref/WeakReference;

    .line 218
    new-instance v0, Lcom/admob/android/ads/ad$c;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ad$c;-><init>(Lcom/admob/android/ads/ad;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    .line 219
    iput-boolean v1, p0, Lcom/admob/android/ads/ad;->h:Z

    .line 220
    iput-boolean v1, p0, Lcom/admob/android/ads/ad;->i:Z

    .line 221
    iput-boolean v1, p0, Lcom/admob/android/ads/ad;->j:Z

    .line 222
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 315
    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    .line 316
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    .line 318
    new-instance v1, Lcom/admob/android/ads/ad$a;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ad$a;-><init>(Lcom/admob/android/ads/ad;)V

    .line 319
    iget-object v2, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 320
    iget-object v2, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 321
    iget-object v2, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    iget-object v0, v0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 325
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    iget-object v1, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    .line 341
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 413
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 414
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 415
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ad;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/admob/android/ads/ad;->g()V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ad;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/admob/android/ads/ad;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ad;Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 45
    const-string v0, "AdMobSDK"

    const-string v1, "fadeBars()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/admob/android/ads/ad;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->a()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/ad;Z)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ad;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 560
    const/4 v1, 0x0

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/e;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Lcom/admob/android/ads/e;->d()Z

    .line 562
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 422
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 423
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 425
    return-void
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/admob/android/ads/ad;->o:Z

    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/admob/android/ads/ad;->g()V

    .line 549
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    .line 556
    :cond_0
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 688
    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    invoke-virtual {v0}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 690
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    .line 691
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 693
    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    invoke-virtual {v0}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_0

    .line 695
    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v2, v2, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 696
    if-eqz v0, :cond_0

    .line 697
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 698
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 699
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    float-to-double v5, v3

    invoke-static {v4, v5, v6}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    float-to-double v5, v3

    invoke-static {v0, v5, v6}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 706
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 707
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 710
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 712
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 716
    iget-object v1, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/ad;->l:J

    .line 721
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/admob/android/ads/ad;->h:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/ad$f;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ad$f;-><init>(Lcom/admob/android/ads/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/admob/android/ads/ad$g;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ad$g;-><init>(Lcom/admob/android/ads/ad;)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 400
    iget-wide v3, p0, Lcom/admob/android/ads/ad;->l:J

    sub-long/2addr v1, v3

    .line 401
    iget-object v3, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v3, v3, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-wide v3, v3, Lcom/admob/android/ads/p;->i:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-long v3, v3

    .line 402
    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 403
    iget-object v5, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    sub-long v1, v3, v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 660
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/admob/android/ads/ad;->g:I

    .line 661
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    iget v0, p0, Lcom/admob/android/ads/ad;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->a()V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/admob/android/ads/ad;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, -0x2

    const/16 v3, 0x86

    const/4 v11, 0x0

    const/high16 v10, 0x43060000    # 134.0f

    .line 517
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/admob/android/ads/ad;->h()V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_4

    .line 528
    iget-object v6, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget v7, p0, Lcom/admob/android/ads/ad;->b:F

    iget-object v0, v6, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v0, Lcom/admob/android/ads/ad$h;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ad$h;-><init>(Lcom/admob/android/ads/ad;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v8, v4, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v8, v8, Lcom/admob/android/ads/p;->n:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    mul-float v0, v10, v7

    float-to-int v0, v0

    mul-float v9, v10, v7

    float-to-int v9, v9

    invoke-virtual {v8, v11, v11, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    mul-float v0, v10, v7

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setWidth(I)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setHeight(I)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v8, v10, v7

    float-to-int v8, v8

    mul-float v9, v10, v7

    float-to-int v9, v9

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/admob/android/ads/ad$h;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ad$h;-><init>(Lcom/admob/android/ads/ad;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v5, "Replay"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v0, v11, v11, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v4, v4, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v4, v4, Lcom/admob/android/ads/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    new-instance v0, Lcom/admob/android/ads/y;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/admob/android/ads/y;-><init>(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    iput-object v0, v6, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/admob/android/ads/ad$h;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ad$h;-><init>(Lcom/admob/android/ads/ad;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v1, v10, v7

    float-to-int v1, v1

    mul-float v2, v10, v7

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v6, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    :cond_2
    if-eqz p1, :cond_3

    .line 530
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-object v1, v0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, v0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-nez v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    .line 537
    :cond_4
    iget-boolean v0, p0, Lcom/admob/android/ads/ad;->o:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    if-nez v0, :cond_5

    .line 538
    new-instance v0, Lcom/admob/android/ads/ad$b;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ad$b;-><init>(Lcom/admob/android/ads/ad;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    .line 539
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    const-wide/16 v2, 0x1d4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    :cond_5
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-nez v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-object v1, v0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 444
    :cond_3
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->invalidate()V

    .line 446
    iget v0, p0, Lcom/admob/android/ads/ad;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 447
    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-boolean v0, v0, Lcom/admob/android/ads/ab;->b:Z

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/ad;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/ad$f;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ad$f;-><init>(Lcom/admob/android/ads/ad;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->f()V

    .line 568
    const/4 v0, 0x0

    .line 570
    iget-boolean v1, p0, Lcom/admob/android/ads/ad;->i:Z

    if-eqz v1, :cond_0

    .line 571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 572
    const-string v1, "event"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    const-string v2, "done"

    invoke-virtual {v1, v2, v0}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 577
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->d()V

    .line 578
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/admob/android/ads/ad;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/admob/android/ads/ad;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 583
    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 587
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 681
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/ad;->removeView(Landroid/view/View;)V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    .line 685
    :cond_0
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v2, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v1, "AdMobSDK"

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ad;->p:Lcom/admob/android/ads/ad$b;

    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    if-nez v0, :cond_1

    const-string v0, "AdMobSDK"

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v0, "openerInfo is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-boolean v0, v0, Lcom/admob/android/ads/r;->l:Z

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ad;->b(Z)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v3, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    if-nez v3, :cond_2

    const-string v0, "AdMobSDK"

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v0, "movieInfo is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "l"

    if-ne v0, v2, :cond_8

    iput v9, p0, Lcom/admob/android/ads/ad;->g:I

    :goto_1
    new-instance v0, Lcom/admob/android/ads/d;

    iget-object v2, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v5, v5, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/admob/android/ads/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    iget-object v0, p0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    const-string v2, "video"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v3, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ad;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v3, Lcom/admob/android/ads/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/admob/android/ads/p;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ad;->a(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/admob/android/ads/ad;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-boolean v0, v0, Lcom/admob/android/ads/r;->l:Z

    if-eqz v0, :cond_9

    const-string v0, "Skip"

    :goto_2
    invoke-static {v0}, Lcom/admob/android/ads/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/admob/android/ads/ad;->h()V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/admob/android/ads/ad;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    :cond_5
    iget-boolean v0, v3, Lcom/admob/android/ads/p;->l:Z

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    new-instance v4, Lcom/admob/android/ads/ad$i;

    invoke-direct {v4, p0, v8}, Lcom/admob/android/ads/ad$i;-><init>(Lcom/admob/android/ads/ad;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    const v4, 0x1080005

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42580000    # 54.0f

    iget v5, p0, Lcom/admob/android/ads/ad;->b:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42100000    # 36.0f

    iget v6, p0, Lcom/admob/android/ads/ad;->b:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/admob/android/ads/ad;->b:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    iget v6, p0, Lcom/admob/android/ads/ad;->b:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    invoke-virtual {p0, v4, v0}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->m:Landroid/widget/Button;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    :cond_7
    iget v0, v3, Lcom/admob/android/ads/p;->e:I

    if-ne v0, v9, :cond_a

    iget-object v0, v3, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, v3, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Lcom/admob/android/ads/ab;

    invoke-direct {v0}, Lcom/admob/android/ads/ab;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget-object v0, p0, Lcom/admob/android/ads/ad;->k:Lcom/admob/android/ads/ab;

    iget v4, p0, Lcom/admob/android/ads/ad;->b:F

    iget-object v6, p0, Lcom/admob/android/ads/ad;->c:Lcom/admob/android/ads/r;

    iget-object v7, p0, Lcom/admob/android/ads/ad;->q:Ljava/lang/ref/WeakReference;

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/admob/android/ads/ab;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admob/android/ads/p;FLcom/admob/android/ads/ad;Lcom/admob/android/ads/r;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    :cond_8
    iput v8, p0, Lcom/admob/android/ads/ad;->g:I

    goto/16 :goto_1

    :cond_9
    const-string v0, "Done"

    goto/16 :goto_2

    :cond_a
    iget v0, v3, Lcom/admob/android/ads/p;->e:I

    if-nez v0, :cond_b

    move v1, v8

    :goto_3
    iget-object v0, p0, Lcom/admob/android/ads/ad;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/admob/android/ads/ad;->r:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/admob/android/ads/ad;->r:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admob/android/ads/ad;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/admob/android/ads/ad;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto/16 :goto_0

    :cond_b
    move v1, v7

    goto :goto_3
.end method
