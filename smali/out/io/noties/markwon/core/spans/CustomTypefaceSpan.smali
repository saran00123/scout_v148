.class public Lio/noties/markwon/core/spans/CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 28
    iput-object p1, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static create(Landroid/graphics/Typeface;)Lio/noties/markwon/core/spans/CustomTypefaceSpan;
    .registers 2
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    new-instance v0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;

    invoke-direct {v0, p0}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private updatePaint(Landroid/text/TextPaint;)V
    .registers 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->updatePaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CustomTypefaceSpan;->updatePaint(Landroid/text/TextPaint;)V

    return-void
.end method
