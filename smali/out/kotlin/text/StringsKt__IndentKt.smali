.class Lkotlin/text/StringsKt__IndentKt;
.super Lkotlin/text/StringsKt__AppendableKt;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,121:1\n111#1,9:123\n111#1,9:161\n1#2:122\n1#2:151\n1#2:183\n1#2:205\n1567#3,11:132\n1858#3,2:143\n1860#3:152\n1578#3:153\n764#3:154\n855#3,2:155\n1547#3:157\n1618#3,3:158\n1567#3,11:170\n1858#3,2:181\n1860#3:184\n1578#3:185\n1567#3,11:192\n1858#3,2:203\n1860#3:206\n1578#3:207\n150#4,6:145\n150#4,6:186\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n37#1:123,9\n76#1:161,9\n37#1:151\n76#1:183\n112#1:205\n37#1:132,11\n37#1:143,2\n37#1:152\n37#1:153\n72#1:154\n72#1:155,2\n73#1:157\n73#1:158,3\n76#1:170,11\n76#1:181,2\n76#1:184\n76#1:185\n112#1:192,11\n112#1:203,2\n112#1:206\n112#1:207\n38#1:145,6\n99#1:186,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/text/StringsKt__AppendableKt;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_13

    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    goto :goto_1b

    .line 103
    :cond_13
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    :goto_1b
    return-object p0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .registers 6

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .line 186
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1b

    .line 187
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 99
    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    move v2, v3

    :goto_1c
    if-ne v2, v3, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_22
    return v2
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$prependIndent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 86
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v0, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    const-string p0, "\n"

    .line 97
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, "    "

    .line 84
    :cond_6
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    .line 112
    check-cast p0, Ljava/lang/Iterable;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 204
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_37

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v7, v6, v2}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    goto :goto_37

    :cond_2d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Index overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 202
    :cond_37
    :goto_37
    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_3d

    if-ne v3, v0, :cond_48

    .line 113
    :cond_3d
    move-object v3, v4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    goto :goto_5a

    .line 116
    :cond_48
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_59

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    move-object v3, v4

    :goto_5a
    if-eqz v3, :cond_5f

    .line 202
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5f
    move v3, v5

    goto :goto_13

    .line 207
    :cond_61
    check-cast v1, Ljava/util/List;

    .line 192
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, p0

    check-cast v3, Ljava/lang/Appendable;

    const-string p0, "\n"

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "$this$replaceIndent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 71
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 155
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    .line 72
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_23

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 156
    :cond_3e
    check-cast v4, Ljava/util/List;

    .line 154
    check-cast v4, Ljava/lang/Iterable;

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 158
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 159
    check-cast v6, Ljava/lang/String;

    .line 73
    invoke-static {v6}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 160
    :cond_6b
    check-cast v5, Ljava/util/List;

    .line 157
    check-cast v5, Ljava/lang/Iterable;

    .line 74
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_7e

    :cond_7d
    move v4, v5

    .line 76
    :goto_7e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v0, v6

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 161
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 182
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-gez v5, :cond_b0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 180
    :cond_b0
    check-cast v7, Ljava/lang/String;

    if-eqz v5, :cond_b6

    if-ne v5, v1, :cond_c1

    .line 163
    :cond_b6
    move-object v5, v7

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c1

    const/4 v5, 0x0

    goto :goto_d1

    .line 76
    :cond_c1
    invoke-static {v7, v4}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d0

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d0

    goto :goto_d1

    :cond_d0
    move-object v5, v7

    :goto_d1
    if-eqz v5, :cond_d6

    .line 180
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d6
    move v5, v8

    goto :goto_9f

    .line 185
    :cond_d8
    check-cast v6, Ljava/util/List;

    .line 170
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v1

    check-cast v8, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7c

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, ""

    .line 68
    :cond_6
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v1, "$this$replaceIndentByMargin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v1, v6

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_100

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v7, v0, v3

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 123
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    .line 124
    check-cast v1, Ljava/lang/Iterable;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    .line 144
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move v0, v12

    :goto_4e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v13, v0, 0x1

    if-gez v0, :cond_5f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 142
    :cond_5f
    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v0, :cond_67

    if-ne v0, v9, :cond_71

    .line 125
    :cond_67
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_ca

    .line 38
    :cond_71
    move-object v0, v14

    check-cast v0, Ljava/lang/CharSequence;

    .line 145
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v12

    :goto_79
    const/4 v3, -0x1

    if-ge v2, v1, :cond_8d

    .line 146
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 38
    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8a

    move v5, v2

    goto :goto_8e

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_8d
    move v5, v3

    :goto_8e
    if-ne v5, v3, :cond_91

    goto :goto_bd

    :cond_91
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p2

    move v2, v5

    move/from16 v17, v5

    move-object/from16 v5, v16

    .line 42
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v17, v0

    if-eqz v14, :cond_b5

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_bd

    :cond_b5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    :goto_bd
    if-eqz v15, :cond_c9

    .line 40
    invoke-interface {v8, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c9

    move-object v15, v0

    goto :goto_ca

    :cond_c9
    move-object v15, v14

    :goto_ca
    if-eqz v15, :cond_cf

    .line 142
    invoke-interface {v10, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_cf
    move v0, v13

    goto/16 :goto_4e

    .line 153
    :cond_d2
    check-cast v10, Ljava/util/List;

    .line 132
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    check-cast v12, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7c

    const/16 v20, 0x0

    invoke-static/range {v11 .. v20}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    const-string p1, ""

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    const-string p2, "|"

    .line 33
    :cond_c
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$trimIndent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 63
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$trimMargin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 26
    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, "|"

    .line 25
    :cond_6
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
