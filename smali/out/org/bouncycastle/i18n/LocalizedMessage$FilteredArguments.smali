.class public Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/i18n/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilteredArguments"
.end annotation


# static fields
.field protected static final FILTER:I = 0x1

.field protected static final FILTER_URL:I = 0x2

.field protected static final NO_FILTER:I


# instance fields
.field protected argFilterType:[I

.field protected arguments:[Ljava/lang/Object;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected filteredArgs:[Ljava/lang/Object;

.field protected isLocaleSpecific:[Z

.field final synthetic this$0:Lorg/bouncycastle/i18n/LocalizedMessage;

.field protected unpackedArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/bouncycastle/i18n/LocalizedMessage;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/i18n/LocalizedMessage;[Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->this$0:Lorg/bouncycastle/i18n/LocalizedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    const/4 p1, 0x0

    move v0, p1

    :goto_20
    array-length v1, p2

    if-ge v0, v1, :cond_75

    aget-object v1, p2, v0

    instance-of v1, v1, Lorg/bouncycastle/i18n/filter/TrustedInput;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v2, p2, v0

    check-cast v2, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v2}, Lorg/bouncycastle/i18n/filter/TrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput p1, v1, v0

    goto :goto_68

    :cond_3a
    aget-object v1, p2, v0

    instance-of v1, v1, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, p2, v0

    check-cast v3, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v3}, Lorg/bouncycastle/i18n/filter/UntrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    aget-object v1, p2, v0

    instance-of v1, v1, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_68

    :cond_59
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v2, v1, v0

    goto :goto_68

    :cond_5e
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, p2, v0

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v2, v1, v0

    :goto_68
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lorg/bouncycastle/i18n/LocaleString;

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_75
    return-void
.end method

.method private filter(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    if-eqz v0, :cond_28

    if-nez p2, :cond_8

    const-string p2, "null"

    :cond_8
    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/i18n/filter/Filter;->doFilterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/i18n/filter/Filter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_28
    return-object p2
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_3c

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-eqz v4, :cond_14

    aget-object v2, v3, v1

    goto :goto_37

    :cond_14
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2b

    check-cast v2, Lorg/bouncycastle/i18n/LocaleString;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/i18n/LocaleString;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_37

    :cond_2b
    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aput-object v2, v3, v1

    :goto_37
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3c
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method
