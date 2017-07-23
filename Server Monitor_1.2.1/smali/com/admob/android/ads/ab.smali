.class public final Lcom/admob/android/ads/ab;
.super Ljava/lang/Object;
.source "AdMobVideoOverlayNative.java"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Z

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    .line 62
    iput-object v0, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v0, p0, Lcom/admob/android/ads/ab;->a:Landroid/view/ViewGroup;

    .line 64
    iput-object v0, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/ab;->b:Z

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->b(Landroid/view/View;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/ab;->b:Z

    .line 241
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/admob/android/ads/p;FLcom/admob/android/ads/ad;Lcom/admob/android/ads/r;Ljava/lang/ref/WeakReference;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/admob/android/ads/p;",
            "F",
            "Lcom/admob/android/ads/ad;",
            "Lcom/admob/android/ads/r;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/admob/android/ads/ab;->f:Ljava/lang/ref/WeakReference;

    .line 76
    new-instance v5, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43a00000    # 320.0f

    mul-float v7, v7, p4

    float-to-int v7, v7

    const/high16 v8, 0x42080000    # 34.0f

    mul-float v8, v8, p4

    float-to-int v8, v8

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 78
    if-eqz v10, :cond_0

    .line 79
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    const/16 v8, 0x7f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static/range {v4 .. v9}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V

    .line 81
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 82
    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/high16 v8, 0x43a00000    # 320.0f

    mul-float v8, v8, p4

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x5

    const/high16 v8, 0x42080000    # 34.0f

    mul-float v8, v8, p4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x6

    const/high16 v8, 0x43a00000    # 320.0f

    mul-float v8, v8, p4

    aput v8, v6, v7

    const/4 v7, 0x7

    const/high16 v8, 0x42080000    # 34.0f

    mul-float v8, v8, p4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 85
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 87
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    .line 88
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 90
    iget-object v5, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/admob/android/ads/p;->d:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    iget-object v6, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v5, "Ads by AdMob"

    invoke-static {v5}, Lcom/admob/android/ads/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v8, v8, p4

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iget-object v6, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42080000    # 34.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v5, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v5, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43a00000    # 320.0f

    mul-float v7, v7, p4

    float-to-int v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    mul-float v8, v8, p4

    float-to-int v8, v8

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 127
    if-eqz v10, :cond_1

    .line 128
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    const/16 v8, 0x7f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static/range {v4 .. v9}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V

    .line 130
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 131
    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/high16 v8, 0x43a00000    # 320.0f

    mul-float v8, v8, p4

    aput v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x5

    const/high16 v8, 0x42480000    # 50.0f

    mul-float v8, v8, p4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x6

    const/high16 v8, 0x43a00000    # 320.0f

    mul-float v8, v8, p4

    aput v8, v6, v7

    const/4 v7, 0x7

    const/high16 v8, 0x42480000    # 50.0f

    mul-float v8, v8, p4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 134
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 136
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    .line 137
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 139
    iget-object v5, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_1
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    move-object v4, v0

    iget-object v4, v4, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    .line 143
    if-eqz v4, :cond_4

    .line 144
    new-instance v10, Landroid/widget/LinearLayout;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v11, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object/from16 v0, p3

    check-cast v0, Lcom/admob/android/ads/o;

    move-object/from16 p7, v0

    .line 152
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42800000    # 64.0f

    mul-float v4, v4, p4

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    new-instance v6, Landroid/widget/Button;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p6 .. p6}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v4

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/admob/android/ads/o;->b:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual/range {p6 .. p6}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v4

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/admob/android/ads/o;->a:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41e00000    # 28.0f

    mul-float v8, v8, p4

    float-to-int v8, v8

    const/high16 v14, 0x41e00000    # 28.0f

    mul-float v14, v14, p4

    float-to-int v14, v14

    invoke-virtual {v4, v5, v7, v8, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/admob/android/ads/o;->c:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v8, v8, p4

    float-to-int v8, v8

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v4, Lcom/admob/android/ads/ad$e;

    iget-object v5, p0, Lcom/admob/android/ads/ab;->f:Ljava/lang/ref/WeakReference;

    move-object v0, v4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/ad$e;-><init>(Lcom/admob/android/ads/ad;Lcom/admob/android/ads/o;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/admob/android/ads/y;

    const/high16 v5, 0x42800000    # 64.0f

    mul-float v5, v5, p4

    float-to-int v7, v5

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v5, v5, p4

    float-to-int v8, v5

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/admob/android/ads/y;-><init>(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {v10, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v4, Landroid/widget/ImageView;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    const/high16 v6, 0x42080000    # 34.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v10, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v13, 0x0

    aput v13, v8, v9

    const/4 v9, 0x1

    const/4 v13, 0x0

    aput v13, v8, v9

    const/4 v9, 0x2

    const/4 v13, 0x0

    aput v13, v8, v9

    const/4 v9, 0x3

    const/high16 v13, 0x42080000    # 34.0f

    mul-float v13, v13, p4

    aput v13, v8, v9

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 162
    :cond_3
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    iget-object v5, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_4
    new-instance v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    .line 170
    iget-object v4, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    new-instance v5, Lcom/admob/android/ads/ad$i;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/ad$i;-><init>(Lcom/admob/android/ads/ad;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v4, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    const v5, 0x1080005

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    iget-object v4, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    const/4 v5, 0x1

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 175
    iget-object v4, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42580000    # 54.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    const/high16 v6, 0x42100000    # 36.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, p4

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    iget-object v5, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/admob/android/ads/ab;->e:Landroid/widget/Button;

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42480000    # 50.0f

    mul-float v6, v6, p4

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v5, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v5, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v4, Lcom/admob/android/ads/ad$d;

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/admob/android/ads/ad$d;-><init>(Lcom/admob/android/ads/ad;)V

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 245
    iget-object v0, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 246
    iget-object v0, p0, Lcom/admob/android/ads/ab;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/admob/android/ads/ab;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/view/View;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/ab;->b:Z

    .line 249
    return-void
.end method
