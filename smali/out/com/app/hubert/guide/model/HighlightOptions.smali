.class public Lcom/app/hubert/guide/model/HighlightOptions;
.super Ljava/lang/Object;
.source "HighlightOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/hubert/guide/model/HighlightOptions$Builder;
    }
.end annotation


# instance fields
.field public onClickListener:Landroid/view/View$OnClickListener;

.field public onHighlightDrewListener:Lcom/app/hubert/guide/listener/OnHighlightDrewListener;

.field public relativeGuide:Lcom/app/hubert/guide/model/RelativeGuide;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
