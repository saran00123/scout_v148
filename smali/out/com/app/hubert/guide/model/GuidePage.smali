.class public Lcom/app/hubert/guide/model/GuidePage;
.super Ljava/lang/Object;
.source "GuidePage.java"


# instance fields
.field private backgroundColor:I

.field private clickToDismissIds:[I

.field private enterAnimation:Landroid/view/animation/Animation;

.field private everywhereCancelable:Z

.field private exitAnimation:Landroid/view/animation/Animation;

.field private highLights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/hubert/guide/model/HighLight;",
            ">;"
        }
    .end annotation
.end field

.field private layoutResId:I

.field private onHighlightDrewListener:Lcom/app/hubert/guide/listener/OnHighlightDrewListener;

.field private onLayoutInflatedListener:Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/app/hubert/guide/model/GuidePage;->everywhereCancelable:Z

    return-void
.end method

.method public static newInstance()Lcom/app/hubert/guide/model/GuidePage;
    .registers 1

    .line 36
    new-instance v0, Lcom/app/hubert/guide/model/GuidePage;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/GuidePage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHighLight(Landroid/graphics/RectF;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    .line 84
    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;I)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 6

    .line 112
    new-instance v0, Lcom/app/hubert/guide/model/HighlightRectF;

    invoke-direct {v0, p1, p2, p3}, Lcom/app/hubert/guide/model/HighlightRectF;-><init>(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;I)V

    if-eqz p4, :cond_19

    .line 114
    iput-object v0, p4, Lcom/app/hubert/guide/model/RelativeGuide;->highLight:Lcom/app/hubert/guide/model/HighLight;

    .line 115
    new-instance p1, Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    invoke-direct {p1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;-><init>()V

    invoke-virtual {p1, p4}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->setRelativeGuide(Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->build()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/app/hubert/guide/model/HighlightRectF;->setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V

    .line 117
    :cond_19
    iget-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    .line 88
    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 8

    .line 40
    sget-object v2, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;I)Lcom/app/hubert/guide/model/GuidePage;
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 7
    .param p5    # Lcom/app/hubert/guide/model/RelativeGuide;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    new-instance v0, Lcom/app/hubert/guide/model/HighlightView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/app/hubert/guide/model/HighlightView;-><init>(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;II)V

    if-eqz p5, :cond_19

    .line 76
    iput-object v0, p5, Lcom/app/hubert/guide/model/RelativeGuide;->highLight:Lcom/app/hubert/guide/model/HighLight;

    .line 77
    new-instance p1, Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    invoke-direct {p1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;-><init>()V

    invoke-virtual {p1, p5}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->setRelativeGuide(Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->build()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/app/hubert/guide/model/HighlightView;->setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V

    .line 79
    :cond_19
    iget-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 9

    .line 44
    sget-object v2, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLightWithOptions(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 6

    .line 150
    new-instance v0, Lcom/app/hubert/guide/model/HighlightRectF;

    invoke-direct {v0, p1, p2, p3}, Lcom/app/hubert/guide/model/HighlightRectF;-><init>(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;I)V

    if-eqz p4, :cond_f

    .line 152
    iget-object p1, p4, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    if-eqz p1, :cond_f

    .line 153
    iget-object p1, p4, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    iput-object v0, p1, Lcom/app/hubert/guide/model/RelativeGuide;->highLight:Lcom/app/hubert/guide/model/HighLight;

    .line 156
    :cond_f
    invoke-virtual {v0, p4}, Lcom/app/hubert/guide/model/HighlightRectF;->setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V

    .line 157
    iget-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addHighLightWithOptions(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLightWithOptions(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 5

    .line 142
    sget-object v0, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;ILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 7

    .line 130
    new-instance v0, Lcom/app/hubert/guide/model/HighlightView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/app/hubert/guide/model/HighlightView;-><init>(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;II)V

    if-eqz p5, :cond_f

    .line 132
    iget-object p1, p5, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    if-eqz p1, :cond_f

    .line 133
    iget-object p1, p5, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    iput-object v0, p1, Lcom/app/hubert/guide/model/RelativeGuide;->highLight:Lcom/app/hubert/guide/model/HighLight;

    .line 136
    :cond_f
    invoke-virtual {v0, p5}, Lcom/app/hubert/guide/model/HighlightView;->setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V

    .line 137
    iget-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 9

    .line 122
    sget-object v2, Lcom/app/hubert/guide/model/HighLight$Shape;->RECTANGLE:Lcom/app/hubert/guide/model/HighLight$Shape;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/app/hubert/guide/model/GuidePage;->addHighLightWithOptions(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;IILcom/app/hubert/guide/model/HighlightOptions;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/app/hubert/guide/model/GuidePage;->backgroundColor:I

    return v0
.end method

.method public getClickToDismissIds()[I
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->clickToDismissIds:[I

    return-object v0
.end method

.method public getEnterAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->enterAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getExitAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->exitAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getHighLights()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/hubert/guide/model/HighLight;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutResId()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/app/hubert/guide/model/GuidePage;->layoutResId:I

    return v0
.end method

.method public getOnLayoutInflatedListener()Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->onLayoutInflatedListener:Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;

    return-object v0
.end method

.method public getRelativeGuides()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/hubert/guide/model/RelativeGuide;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/model/HighLight;

    .line 251
    invoke-interface {v2}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 253
    iget-object v3, v2, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    if-eqz v3, :cond_b

    .line 254
    iget-object v2, v2, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 217
    iget v0, p0, Lcom/app/hubert/guide/model/GuidePage;->layoutResId:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/app/hubert/guide/model/GuidePage;->highLights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isEverywhereCancelable()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/app/hubert/guide/model/GuidePage;->everywhereCancelable:Z

    return v0
.end method

.method public setBackgroundColor(I)Lcom/app/hubert/guide/model/GuidePage;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 182
    iput p1, p0, Lcom/app/hubert/guide/model/GuidePage;->backgroundColor:I

    return-object p0
.end method

.method public setEnterAnimation(Landroid/view/animation/Animation;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->enterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public setEverywhereCancelable(Z)Lcom/app/hubert/guide/model/GuidePage;
    .registers 2

    .line 174
    iput-boolean p1, p0, Lcom/app/hubert/guide/model/GuidePage;->everywhereCancelable:Z

    return-object p0
.end method

.method public setExitAnimation(Landroid/view/animation/Animation;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->exitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public varargs setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 168
    iput p1, p0, Lcom/app/hubert/guide/model/GuidePage;->layoutResId:I

    .line 169
    iput-object p2, p0, Lcom/app/hubert/guide/model/GuidePage;->clickToDismissIds:[I

    return-object p0
.end method

.method public setOnLayoutInflatedListener(Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;)Lcom/app/hubert/guide/model/GuidePage;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/app/hubert/guide/model/GuidePage;->onLayoutInflatedListener:Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;

    return-object p0
.end method
