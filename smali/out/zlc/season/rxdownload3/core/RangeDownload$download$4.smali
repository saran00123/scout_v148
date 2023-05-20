.class final Lzlc/season/rxdownload3/core/RangeDownload$download$4;
.super Ljava/lang/Object;
.source "RangeDownload.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzlc/season/rxdownload3/core/RangeDownload;->download()Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzlc/season/rxdownload3/core/RangeDownload;


# direct methods
.method constructor <init>(Lzlc/season/rxdownload3/core/RangeDownload;)V
    .registers 2

    iput-object p1, p0, Lzlc/season/rxdownload3/core/RangeDownload$download$4;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 69
    iget-object v0, p0, Lzlc/season/rxdownload3/core/RangeDownload$download$4;->this$0:Lzlc/season/rxdownload3/core/RangeDownload;

    invoke-static {v0}, Lzlc/season/rxdownload3/core/RangeDownload;->access$getTargetFile$p(Lzlc/season/rxdownload3/core/RangeDownload;)Lzlc/season/rxdownload3/core/RangeTargetFile;

    move-result-object v0

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/RangeTargetFile;->rename()V

    return-void
.end method
