.class public final Lcom/admob/android/ads/k;
.super Landroid/widget/RelativeLayout;
.source "AdContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/admob/android/ads/aq$a;
.implements Lcom/admob/android/ads/j$c;
.implements Lcom/admob/android/ads/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/k$b;,
        Lcom/admob/android/ads/k$d;,
        Lcom/admob/android/ads/k$c;,
        Lcom/admob/android/ads/k$a;
    }
.end annotation


# static fields
.field private static i:F

.field private static j:Lcom/admob/android/ads/k$d;


# instance fields
.field protected a:Lcom/admob/android/ads/j;

.field final b:Lcom/admob/android/ads/AdView;

.field protected c:Landroid/widget/ProgressBar;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:J

.field private g:Z

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/admob/android/ads/k;->i:F

    .line 569
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/k$d;

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/j;Landroid/content/Context;Lcom/admob/android/ads/AdView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    .line 159
    iput-object p3, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setId(I)V

    .line 164
    invoke-static {p2}, Lcom/admob/android/ads/k;->b(Landroid/content/Context;)V

    .line 166
    iput-object v2, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    .line 169
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/k;->a(Lcom/admob/android/ads/j;)V

    .line 170
    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 237
    invoke-static {p0}, Lcom/admob/android/ads/k;->b(Landroid/content/Context;)V

    .line 238
    sget v0, Lcom/admob/android/ads/k;->i:F

    return v0
.end method

.method private static a(IIIJLjava/util/Vector;)Ljava/util/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x2

    const-string v8, "AdMobSDK"

    .line 960
    if-nez p5, :cond_2

    .line 962
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 964
    :goto_0
    long-to-float v1, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 967
    if-eq p1, v3, :cond_1

    if-eq p2, v3, :cond_1

    .line 969
    const-string v2, "{%d,%d,%d,%f}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 976
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 978
    const-string v2, "AdMobSDK"

    invoke-static {v8, v5}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    return-object v0

    .line 973
    :cond_1
    const-string v2, "{%d,%f}"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, p5

    goto :goto_0
.end method

.method private a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    .line 1029
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1030
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/admob/android/ads/k;->f:J

    sub-long v3, v2, v4

    .line 1032
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_2

    .line 1035
    :cond_0
    if-ne v0, v6, :cond_1

    move v0, v6

    :goto_0
    move v2, v1

    move-object v5, p2

    .line 1037
    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/k;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 1040
    :goto_1
    return-object v0

    .line 1035
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Z",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/admob/android/ads/k;->f:J

    sub-long v3, v1, v3

    .line 1008
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_2

    .line 1012
    :cond_0
    if-ne v0, v5, :cond_1

    move v0, v5

    .line 1014
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/k;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 1020
    :goto_1
    return-object v0

    .line 1012
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method private static a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 914
    instance-of v1, p0, Lcom/admob/android/ads/l;

    if-eqz v1, :cond_0

    .line 916
    move-object v0, p0

    check-cast v0, Lcom/admob/android/ads/l;

    move-object v1, v0

    .line 918
    invoke-interface {v1}, Lcom/admob/android/ads/l;->j()Lorg/json/JSONObject;

    move-result-object v2

    .line 919
    invoke-interface {v1}, Lcom/admob/android/ads/l;->i()Ljava/lang/String;

    move-result-object v1

    .line 920
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 924
    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    :goto_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 933
    check-cast p0, Landroid/view/ViewGroup;

    .line 935
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 937
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 939
    invoke-static {v2, p1}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 942
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/admob/android/ads/k;->i:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/admob/android/ads/k;->i:F

    .line 177
    :cond_0
    return-void
.end method

.method public static d()F
    .locals 1

    .prologue
    .line 247
    sget v0, Lcom/admob/android/ads/k;->i:F

    return v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v2}, Lcom/admob/android/ads/j;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 9

    .prologue
    .line 810
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    .line 818
    iget-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    if-nez v0, :cond_0

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    .line 823
    invoke-direct {p0}, Lcom/admob/android/ads/k;->n()Lorg/json/JSONObject;

    move-result-object v7

    .line 825
    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 827
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/admob/android/ads/k$b;

    invoke-direct {v0, v7, p0}, Lcom/admob/android/ads/k$b;-><init>(Lorg/json/JSONObject;Lcom/admob/android/ads/k;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/admob/android/ads/k;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    :cond_0
    :goto_1
    return-void

    .line 825
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v0, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;)V

    .line 835
    iget-object v0, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView;->performClick()Z

    goto :goto_1
.end method

.method private n()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 893
    const/4 v0, 0x0

    .line 896
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 898
    invoke-static {p0, v1}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 901
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :try_start_1
    const-string v0, "interactions"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 909
    :goto_0
    return-object v0

    .line 905
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 907
    :goto_1
    const-string v2, "AdMobSDK"

    const-string v3, "Exception while processing interaction history."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 905
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/admob/android/ads/k$c;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/k$c;-><init>(Lcom/admob/android/ads/k;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 270
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 272
    iput-object p1, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    .line 276
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    .line 277
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 278
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 279
    if-eqz p2, :cond_0

    .line 281
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    new-instance v0, Lcom/admob/android/ads/k$a;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/k$a;-><init>(Lcom/admob/android/ads/k;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_1
    return-void
.end method

.method public final a(Lcom/admob/android/ads/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    iput-object p1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    .line 209
    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setFocusable(Z)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setClickable(Z)V

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1, p0}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/j$c;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setFocusable(Z)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setClickable(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const v2, 0x1080062

    const/4 v3, -0x1

    .line 180
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-void
.end method

.method public final c()Lcom/admob/android/ads/j;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "AdMobSDK"

    .line 634
    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 640
    const-string v1, "AdMobSDK"

    invoke-static {v3, v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
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

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v1}, Lcom/admob/android/ads/j;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v2, v1}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v5

    .line 652
    :goto_0
    if-eqz v1, :cond_1

    .line 654
    iget-object v2, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p1, v4, v2}, Lcom/admob/android/ads/k;->a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    .line 656
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setPressed(Z)V

    :cond_3
    :goto_1
    move v0, v4

    .line 661
    :goto_2
    return v0

    .line 656
    :cond_4
    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/admob/android/ads/k;->m()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_1

    .line 661
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "AdMobSDK"

    .line 774
    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTrackballEvent: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p1, v2, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 787
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/k;->setPressed(Z)V

    .line 801
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 789
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    invoke-direct {p0}, Lcom/admob/android/ads/k;->m()V

    .line 796
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->i()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    .line 261
    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    iput-boolean v2, p0, Lcom/admob/android/ads/k;->g:Z

    .line 457
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 574
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 575
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 577
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    sget-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/k$d;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Lcom/admob/android/ads/k$d;

    invoke-direct {v0}, Lcom/admob/android/ads/k$d;-><init>()V

    sput-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/k$d;

    .line 584
    :cond_1
    sget-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/k$d;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 588
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 589
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 591
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->bringChildToFront(Landroid/view/View;)V

    .line 586
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 599
    :cond_4
    return-void
.end method

.method public final h()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    sub-long/2addr v0, v2

    .line 758
    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x989680

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    move-wide v0, v4

    .line 763
    :cond_1
    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    const-string v0, "container"

    return-object v0
.end method

.method public final j()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    iget-object v1, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 1082
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1085
    :try_start_0
    const-string v1, "touches"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1070
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1061
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 370
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 381
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 384
    iget-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/j;

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->j()V

    .line 385
    :cond_2
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 526
    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    .line 540
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const-string v2, "AdMobSDK"

    .line 551
    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    .line 560
    invoke-direct {p0}, Lcom/admob/android/ads/k;->m()V

    .line 563
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    .line 566
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setPressed(Z)V
    .locals 2

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1114
    if-eqz p1, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1119
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 1128
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->invalidate()V

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
