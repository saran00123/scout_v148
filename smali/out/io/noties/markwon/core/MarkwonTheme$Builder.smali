.class public Lio/noties/markwon/core/MarkwonTheme$Builder;
.super Ljava/lang/Object;
.source "MarkwonTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/core/MarkwonTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blockMargin:I

.field private blockQuoteColor:I

.field private blockQuoteWidth:I

.field private bulletListItemStrokeWidth:I

.field private bulletWidth:I

.field private codeBackgroundColor:I

.field private codeBlockBackgroundColor:I

.field private codeBlockMargin:I

.field private codeBlockTextColor:I

.field private codeBlockTextSize:I

.field private codeBlockTypeface:Landroid/graphics/Typeface;

.field private codeTextColor:I

.field private codeTextSize:I

.field private codeTypeface:Landroid/graphics/Typeface;

.field private headingBreakColor:I

.field private headingBreakHeight:I

.field private headingTextSizeMultipliers:[F

.field private headingTypeface:Landroid/graphics/Typeface;

.field private linkColor:I

.field private listItemColor:I

.field private thematicBreakColor:I

.field private thematicBreakHeight:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 475
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 480
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    return-void
.end method

.method constructor <init>(Lio/noties/markwon/core/MarkwonTheme;)V
    .registers 3
    .param p1    # Lio/noties/markwon/core/MarkwonTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 475
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 480
    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    .line 486
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    .line 487
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    .line 488
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    .line 489
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    .line 490
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    .line 491
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    .line 492
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    .line 493
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    .line 494
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    .line 495
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    .line 496
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    .line 497
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    .line 498
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    .line 499
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    .line 500
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    .line 501
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    .line 502
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    .line 503
    iget-object v0, p1, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    .line 504
    iget v0, p1, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    .line 505
    iget p1, p1, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    return p0
.end method

.method static synthetic access$100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    return p0
.end method

.method static synthetic access$1000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    return p0
.end method

.method static synthetic access$1100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    return p0
.end method

.method static synthetic access$1200(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .registers 1

    .line 457
    iget-object p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1300(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .registers 1

    .line 457
    iget-object p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    return p0
.end method

.method static synthetic access$1500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextSize:I

    return p0
.end method

.method static synthetic access$1600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    return p0
.end method

.method static synthetic access$1700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    return p0
.end method

.method static synthetic access$1800(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;
    .registers 1

    .line 457
    iget-object p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$1900(Lio/noties/markwon/core/MarkwonTheme$Builder;)[F
    .registers 1

    .line 457
    iget-object p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    return-object p0
.end method

.method static synthetic access$200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    return p0
.end method

.method static synthetic access$2000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    return p0
.end method

.method static synthetic access$2100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    return p0
.end method

.method static synthetic access$300(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    return p0
.end method

.method static synthetic access$400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    return p0
.end method

.method static synthetic access$500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    return p0
.end method

.method static synthetic access$600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    return p0
.end method

.method static synthetic access$700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    return p0
.end method

.method static synthetic access$800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    return p0
.end method

.method static synthetic access$900(Lio/noties/markwon/core/MarkwonTheme$Builder;)I
    .registers 1

    .line 457
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    return p0
.end method


# virtual methods
.method public blockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 516
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin:I

    return-object p0
.end method

.method public blockQuoteColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 529
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteColor:I

    return-object p0
.end method

.method public blockQuoteWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 522
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth:I

    return-object p0
.end method

.method public build()Lio/noties/markwon/core/MarkwonTheme;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 668
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/MarkwonTheme;-><init>(Lio/noties/markwon/core/MarkwonTheme$Builder;)V

    return-object v0
.end method

.method public bulletListItemStrokeWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 541
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth:I

    return-object p0
.end method

.method public bulletWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 547
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletWidth:I

    return-object p0
.end method

.method public codeBackgroundColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 569
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBackgroundColor:I

    return-object p0
.end method

.method public codeBlockBackgroundColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 578
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockBackgroundColor:I

    return-object p0
.end method

.method public codeBlockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 584
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin:I

    return-object p0
.end method

.method public codeBlockTextColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 562
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextColor:I

    return-object p0
.end method

.method public codeBlockTextSize(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 614
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTextSize:I

    return-object p0
.end method

.method public codeBlockTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 599
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public codeTextColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 553
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextColor:I

    return-object p0
.end method

.method public codeTextSize(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 605
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTextSize:I

    return-object p0
.end method

.method public codeTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 590
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public headingBreakColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 626
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakColor:I

    return-object p0
.end method

.method public headingBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 620
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight:I

    return-object p0
.end method

.method public headingTextSizeMultipliers([F)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x6L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 650
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTextSizeMultipliers:[F

    return-object p0
.end method

.method public headingTypeface(Landroid/graphics/Typeface;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 637
    iput-object p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public linkColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 510
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->linkColor:I

    return-object p0
.end method

.method public listItemColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 535
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->listItemColor:I

    return-object p0
.end method

.method public thematicBreakColor(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 656
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakColor:I

    return-object p0
.end method

.method public thematicBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 662
    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight:I

    return-object p0
.end method
