.class public Lio/noties/markwon/html/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "ParseErrorList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/noties/markwon/html/jsoup/parser/ParseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final maxSize:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    iput p2, p0, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->maxSize:I

    return-void
.end method

.method public static noTracking()Lio/noties/markwon/html/jsoup/parser/ParseErrorList;
    .registers 2

    .line 28
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method

.method public static tracking(I)Lio/noties/markwon/html/jsoup/parser/ParseErrorList;
    .registers 3

    .line 32
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method canAddError()Z
    .registers 3

    .line 20
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->size()I

    move-result v0

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->maxSize:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method getMaxSize()I
    .registers 2

    .line 24
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->maxSize:I

    return v0
.end method
