.class Lanet/channel/detect/ExceptionDetector$LimitedQueue;
.super Ljava/util/LinkedList;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/detect/ExceptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/detect/ExceptionDetector;

.field private b:I


# direct methods
.method public constructor <init>(Lanet/channel/detect/ExceptionDetector;I)V
    .registers 3

    .line 337
    iput-object p1, p0, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->a:Lanet/channel/detect/ExceptionDetector;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 338
    iput p2, p0, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->b:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 343
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    :goto_4
    if-eqz p1, :cond_12

    .line 344
    invoke-virtual {p0}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->size()I

    move-result v0

    iget v1, p0, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->b:I

    if-le v0, v1, :cond_12

    .line 345
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_4

    :cond_12
    return p1
.end method
