.class public final Lzlc/season/rxdownload3/RxDownloadI$DefaultImpls;
.super Ljava/lang/Object;
.source "RxDownloadI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/RxDownloadI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static synthetic create$default(Lzlc/season/rxdownload3/RxDownloadI;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/Flowable;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 16
    :cond_7
    invoke-interface {p0, p1, p2}, Lzlc/season/rxdownload3/RxDownloadI;->create(Ljava/lang/String;Z)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: create"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic create$default(Lzlc/season/rxdownload3/RxDownloadI;Lzlc/season/rxdownload3/core/Mission;ZILjava/lang/Object;)Lio/reactivex/Flowable;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 18
    :cond_7
    invoke-interface {p0, p1, p2}, Lzlc/season/rxdownload3/RxDownloadI;->create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: create"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createAll$default(Lzlc/season/rxdownload3/RxDownloadI;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/Maybe;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 40
    :cond_7
    invoke-interface {p0, p1, p2}, Lzlc/season/rxdownload3/RxDownloadI;->createAll(Ljava/util/List;Z)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createAll"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lzlc/season/rxdownload3/RxDownloadI;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/Maybe;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 30
    :cond_7
    invoke-interface {p0, p1, p2}, Lzlc/season/rxdownload3/RxDownloadI;->delete(Ljava/lang/String;Z)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lzlc/season/rxdownload3/RxDownloadI;Lzlc/season/rxdownload3/core/Mission;ZILjava/lang/Object;)Lio/reactivex/Maybe;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 32
    :cond_7
    invoke-interface {p0, p1, p2}, Lzlc/season/rxdownload3/RxDownloadI;->delete(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic deleteAll$default(Lzlc/season/rxdownload3/RxDownloadI;ZILjava/lang/Object;)Lio/reactivex/Maybe;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 46
    :cond_7
    invoke-interface {p0, p1}, Lzlc/season/rxdownload3/RxDownloadI;->deleteAll(Z)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 0
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deleteAll"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
