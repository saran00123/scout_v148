.class public interface abstract Lcom/app/hubert/guide/model/HighLight;
.super Ljava/lang/Object;
.source "HighLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/hubert/guide/model/HighLight$Shape;
    }
.end annotation


# virtual methods
.method public abstract getOptions()Lcom/app/hubert/guide/model/HighlightOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRadius()F
.end method

.method public abstract getRectF(Landroid/view/View;)Landroid/graphics/RectF;
.end method

.method public abstract getRound()I
.end method

.method public abstract getShape()Lcom/app/hubert/guide/model/HighLight$Shape;
.end method
