.class public Lcom/android/camera/ui/PreviewListPreference;
.super Landroid/preference/ListPreference;
.source "PreviewListPreference.java"


# instance fields
.field private mDefaultValues:[Ljava/lang/CharSequence;

.field private mLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PreviewListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    .line 69
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 75
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p1, v6

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 92
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 93
    aget-object v8, v1, v7

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 94
    aget-object v8, v0, v7

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    aget-object v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    .line 97
    aget-object v8, v2, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 102
    new-array v0, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    new-array v0, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 105
    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/camera/ui/PreviewListPreference;->mLabels:[Ljava/lang/CharSequence;

    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/android/camera/ui/PreviewListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PreviewListPreference;->findSupportedDefaultValue([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
