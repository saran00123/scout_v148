.class public Lio/noties/markwon/core/MarkwonTheme;
.super Ljava/lang/Object;
.source "MarkwonTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/MarkwonTheme$Builder;
    }
.end annotation


# static fields
.field protected static final BLOCK_QUOTE_DEF_COLOR_ALPHA:I = 0x19

.field protected static final CODE_DEF_BACKGROUND_COLOR_ALPHA:I = 0x19

.field protected static final CODE_DEF_TEXT_SIZE_RATIO:F = 0.87f

.field protected static final HEADING_DEF_BREAK_COLOR_ALPHA:I = 0x4b

.field private static final HEADING_SIZES:[F

.field protected static final THEMATIC_BREAK_DEF_ALPHA:I = 0x19


# instance fields
.field protected final blockMargin:I

.field protected final blockQuoteColor:I

.field protected final blockQuoteWidth:I

.field protected final bulletListItemStrokeWidth:I

.field protected final bulletWidth:I

.field protected final codeBackgroundColor:I

.field protected final codeBlockBackgroundColor:I

.field protected final codeBlockMargin:I

.field protected final codeBlockTextColor:I

.field protected final codeBlockTextSize:I

.field protected final codeBlockTypeface:Landroid/graphics/Typeface;

.field protected final codeTextColor:I

.field protected final codeTextSize:I

.field protected final codeTypeface:Landroid/graphics/Typeface;

.field protected final headingBreakColor:I

.field protected final headingBreakHeight:I

.field protected final headingTextSizeMultipliers:[F

.field protected final headingTypeface:Landroid/graphics/Typeface;

.field protected final linkColor:I

.field protected final listItemColor:I

.field protected final thematicBreakColor:I

.field protected final thematicBreakHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    .line 112
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method protected constructor <init>(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
    .registers 3
    .param p1    # Lio/noties/markwon/core/MarkwonTheme$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    .line 188
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 189
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 190
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$300(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    .line 191
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    .line 192
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 193
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    .line 194
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    .line 195
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    .line 196
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$900(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    .line 197
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    .line 198
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    .line 199
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1200(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    .line 200
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1300(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    .line 201
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    .line 202
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    .line 203
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 204
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    .line 205
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1800(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    .line 206
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1900(Lio/noties/markwon/core/MarkwonTheme$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    .line 207
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    .line 208
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result p1

    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    return-void
.end method

.method public static builder(Lio/noties/markwon/core/MarkwonTheme;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 2
    .param p0    # Lio/noties/markwon/core/MarkwonTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>(Lio/noties/markwon/core/MarkwonTheme;)V

    return-object v0
.end method

.method public static builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 93
    invoke-static {p0}, Lio/noties/markwon/utils/Dip;->create(Landroid/content/Context;)Lio/noties/markwon/utils/Dip;

    move-result-object p0

    .line 94
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>()V

    const/16 v1, 0x8

    .line 95
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    const/16 v1, 0x18

    .line 96
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 97
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme;
    .registers 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    invoke-static {p0}, Lio/noties/markwon/core/MarkwonTheme;->builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/noties/markwon/core/MarkwonTheme$Builder;->build()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object p0

    return-object p0
.end method

.method public static emptyBuilder()Lio/noties/markwon/core/MarkwonTheme$Builder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 65
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyBlockQuoteStyle(Landroid/graphics/Paint;)V
    .registers 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    if-nez v0, :cond_e

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 245
    :cond_e
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public applyCodeBlockTextStyle(Landroid/graphics/Paint;)V
    .registers 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 329
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    if-eqz v0, :cond_5

    goto :goto_7

    .line 331
    :cond_5
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    :goto_7
    if-eqz v0, :cond_c

    .line 334
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    :cond_c
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_11

    goto :goto_13

    .line 339
    :cond_11
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    :goto_13
    if-eqz v0, :cond_26

    .line 343
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 348
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v0, :cond_1d

    goto :goto_1f

    .line 350
    :cond_1d
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_1f
    if-lez v0, :cond_44

    int-to-float v0, v0

    .line 353
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_44

    .line 358
    :cond_26
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 360
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v0, :cond_30

    goto :goto_32

    .line 362
    :cond_30
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_32
    if-lez v0, :cond_39

    int-to-float v0, v0

    .line 365
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_44

    .line 368
    :cond_39
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_44
    :goto_44
    return-void
.end method

.method public applyCodeTextStyle(Landroid/graphics/Paint;)V
    .registers 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    if-eqz v0, :cond_7

    .line 299
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    :cond_7
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_17

    .line 304
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 306
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_30

    int-to-float v0, v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_30

    .line 312
    :cond_17
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_25

    int-to-float v0, v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_30

    .line 317
    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_30
    :goto_30
    return-void
.end method

.method public applyHeadingBreakStyle(Landroid/graphics/Paint;)V
    .registers 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    if-eqz v0, :cond_5

    goto :goto_f

    .line 430
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 432
    :goto_f
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    if-ltz v0, :cond_1f

    int-to-float v0, v0

    .line 436
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1f
    return-void
.end method

.method public applyHeadingTextStyle(Landroid/graphics/Paint;I)V
    .registers 8
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x6L
        .end annotation
    .end param

    .line 406
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 407
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_c

    .line 409
    :cond_9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 411
    :goto_c
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    if-eqz v0, :cond_11

    goto :goto_13

    .line 413
    :cond_11
    sget-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    :goto_13
    if-eqz v0, :cond_24

    .line 415
    array-length v2, v0

    if-lt v2, p2, :cond_24

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-int/2addr p2, v1

    aget p2, v0, p2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    .line 418
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`"

    .line 418
    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyLinkStyle(Landroid/graphics/Paint;)V
    .registers 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 226
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    if-eqz v0, :cond_c

    .line 228
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_18

    .line 232
    :cond_c
    instance-of v0, p1, Landroid/text/TextPaint;

    if-eqz v0, :cond_18

    .line 233
    move-object v0, p1

    check-cast v0, Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method public applyLinkStyle(Landroid/text/TextPaint;)V
    .registers 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 216
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    if-eqz v0, :cond_c

    .line 217
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_11

    .line 220
    :cond_c
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_11
    return-void
.end method

.method public applyListItemStyle(Landroid/graphics/Paint;)V
    .registers 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 266
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    if-eqz v0, :cond_5

    goto :goto_9

    .line 269
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 271
    :goto_9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    if-eqz v0, :cond_14

    int-to-float v0, v0

    .line 274
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_14
    return-void
.end method

.method public applyThematicBreakStyle(Landroid/graphics/Paint;)V
    .registers 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 442
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    if-eqz v0, :cond_5

    goto :goto_f

    .line 445
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 447
    :goto_f
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    if-ltz v0, :cond_1f

    int-to-float v0, v0

    .line 452
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1f
    return-void
.end method

.method public getBlockMargin()I
    .registers 2

    .line 250
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    return v0
.end method

.method public getBlockQuoteWidth()I
    .registers 3

    .line 255
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    if-nez v0, :cond_e

    .line 256
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_e
    return v0
.end method

.method public getBulletWidth(I)I
    .registers 3

    .line 280
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 283
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    if-eqz v0, :cond_10

    if-le v0, p1, :cond_f

    goto :goto_10

    :cond_f
    move p1, v0

    :cond_10
    :goto_10
    return p1
.end method

.method public getCodeBackgroundColor(Landroid/graphics/Paint;)I
    .registers 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 383
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    if-eqz v0, :cond_5

    goto :goto_f

    .line 386
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    :goto_f
    return v0
.end method

.method public getCodeBlockBackgroundColor(Landroid/graphics/Paint;)I
    .registers 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 396
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    if-eqz v0, :cond_5

    goto :goto_7

    .line 398
    :cond_5
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    :goto_7
    if-eqz v0, :cond_a

    goto :goto_14

    .line 402
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    :goto_14
    return v0
.end method

.method public getCodeBlockMargin()I
    .registers 2

    .line 375
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    return v0
.end method
