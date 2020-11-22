.class public Lcom/android/camera/preferences/ListPreference;
.super Lcom/android/camera/preferences/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private final mDefaultValues:[Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mHasPopup:Z

.field private final mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    const/4 p2, 0x3

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/preferences/ListPreference;->mHasPopup:Z

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 64
    iget p2, p2, Landroid/util/TypedValue;->type:I

    if-ne p2, v0, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    new-array p2, v0, [Ljava/lang/CharSequence;

    .line 67
    iput-object p2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    .line 68
    iget-object p2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 71
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/camera/preferences/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 178
    iget-object v4, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v4, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 184
    new-array v2, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 185
    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public filterValue()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterValue index < 0, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPreference"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public findSupportedDefaultValue()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 124
    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object p0, p0, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntry index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPreference"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p0, p0, v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    .line 108
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public hasPopup()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/camera/preferences/ListPreference;->mHasPopup:Z

    return p0
.end method

.method public isDefaultValue()Z
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    .line 115
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    iget-object p0, p0, Lcom/android/camera/preferences/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public print()V
    .locals 6

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPreference"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    const-string v4, "]="

    if-ge v2, v3, :cond_0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entryValues["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 193
    :goto_1
    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEntries["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/preferences/ListPreference;->mDefaultValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/android/camera/preferences/ListPreference;->mValue:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/ListPreference;->persistStringValue(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setValueIndex(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/camera/preferences/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
