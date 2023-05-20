.class Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;
.super Ljava/lang/Object;
.source "MultiBoxTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedRecognition"
.end annotation


# instance fields
.field color:I

.field detectionConfidence:F

.field location:Landroid/graphics/RectF;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$1;)V
    .registers 2

    .line 272
    invoke-direct {p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;-><init>()V

    return-void
.end method
