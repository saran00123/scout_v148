.class Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;->this$0:Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;)V
    .registers 3

    .line 318
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 321
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
