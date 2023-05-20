.class public Lcom/app/hubert/guide/model/HighlightOptions$Builder;
.super Ljava/lang/Object;
.source "HighlightOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/hubert/guide/model/HighlightOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private options:Lcom/app/hubert/guide/model/HighlightOptions;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/app/hubert/guide/model/HighlightOptions;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/HighlightOptions;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-void
.end method


# virtual methods
.method public build()Lcom/app/hubert/guide/model/HighlightOptions;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    iput-object p1, v0, Lcom/app/hubert/guide/model/HighlightOptions;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setOnHighlightDrewListener(Lcom/app/hubert/guide/listener/OnHighlightDrewListener;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    iput-object p1, v0, Lcom/app/hubert/guide/model/HighlightOptions;->onHighlightDrewListener:Lcom/app/hubert/guide/listener/OnHighlightDrewListener;

    return-object p0
.end method

.method public setRelativeGuide(Lcom/app/hubert/guide/model/RelativeGuide;)Lcom/app/hubert/guide/model/HighlightOptions$Builder;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightOptions$Builder;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    iput-object p1, v0, Lcom/app/hubert/guide/model/HighlightOptions;->relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;

    return-object p0
.end method
