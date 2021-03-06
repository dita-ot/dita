<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Subject Scheme Map                           -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      [[[Release date]]]                                        -->
<!--  PURPOSE:   Declaring the elements and specialization         -->
<!--             attributes for DITA Subject Scheme Maps           -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Subject Scheme Map//EN"   -->
<!--       Delivered as file "subjectScheme.mod"                   -->
<!-- ============================================================= -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2008, 2009.              -->
<!--             (C) Copyright IBM Corporation 2005, 2007.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2018.04.09 KJE: Removed @navtitle                          -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % subjectScheme
                       "subjectScheme"                               >
<!ENTITY % schemeref   "schemeref"                                   >
<!ENTITY % hasNarrower "hasNarrower"                                 >
<!ENTITY % hasKind     "hasKind"                                     >
<!ENTITY % hasPart     "hasPart"                                     >
<!ENTITY % hasInstance "hasInstance"                                 >
<!ENTITY % hasRelated  "hasRelated"                                  >
<!ENTITY % subjectdef  "subjectdef"                                  >
<!ENTITY % subjectHead "subjectHead"                                 >
<!ENTITY % subjectHeadMeta
                       "subjectHeadMeta"                             >
<!ENTITY % enumerationdef
                       "enumerationdef"                              >
<!ENTITY % elementdef  "elementdef"                                  >
<!ENTITY % attributedef
                       "attributedef"                                >
<!ENTITY % defaultSubject
                       "defaultSubject"                              >
<!ENTITY % relatedSubjects
                       "relatedSubjects"                             >
<!ENTITY % subjectRelTable
                       "subjectRelTable"                             >
<!ENTITY % subjectRelHeader
                       "subjectRelHeader"                            >
<!ENTITY % subjectRel  "subjectRel"                                  >
<!ENTITY % subjectRole "subjectRole"                                 >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % topicref-atts-for-subjectScheme
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED"
>
<!--                    LONG NAME: Subject Scheme Map              -->
<!ENTITY % subjectScheme.content
                       "((%title;)?,
                         (%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %enumerationdef; |
                          %hasInstance; |
                          %hasKind; |
                          %hasNarrower; |
                          %hasPart; |
                          %hasRelated; |
                          %navref; |
                          %relatedSubjects; |
                          %reltable; |
                          %schemeref; |
                          %subjectdef; |
                          %subjectHead; |
                          %subjectRelTable; |
                          %topicref;)*)"
>
<!ENTITY % subjectScheme.attributes
              "id
                          ID
                                    #IMPLIED
               %conref-atts;
               anchorref
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %localization-atts;
               %topicref-atts-for-subjectScheme;
               %select-atts;"
>
<!ELEMENT  subjectScheme %subjectScheme.content;>
<!ATTLIST  subjectScheme %subjectScheme.attributes;
                 %arch-atts;
                 specializations 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Scheme reference                -->
<!ENTITY % schemeref.content
                       "((%topicmeta;)?,
                         (%data.elements.incl;)*)"
>
<!ENTITY % schemeref.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    'scheme'
               cascade
                          CDATA
                                    #IMPLIED
               format
                          CDATA
                                    'ditamap'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  schemeref %schemeref.content;>
<!ATTLIST  schemeref %schemeref.attributes;>


<!--                    LONG NAME: Has Narrower Relationship       -->
<!ENTITY % hasNarrower.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % hasNarrower.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  hasNarrower %hasNarrower.content;>
<!ATTLIST  hasNarrower %hasNarrower.attributes;>


<!--                    LONG NAME: Has Kind Relationship           -->
<!ENTITY % hasKind.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % hasKind.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  hasKind %hasKind.content;>
<!ATTLIST  hasKind %hasKind.attributes;>


<!--                    LONG NAME: Has Part Relationship           -->
<!ENTITY % hasPart.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % hasPart.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  hasPart %hasPart.content;>
<!ATTLIST  hasPart %hasPart.attributes;>


<!--                    LONG NAME: Has Instance Relationship       -->
<!ENTITY % hasInstance.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % hasInstance.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  hasInstance %hasInstance.content;>
<!ATTLIST  hasInstance %hasInstance.attributes;>


<!--                    LONG NAME: Has Related Relationship        -->
<!ENTITY % hasRelated.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % hasRelated.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  hasRelated %hasRelated.content;>
<!ATTLIST  hasRelated %hasRelated.attributes;>


<!--                    LONG NAME: Subject definition              -->
<!ENTITY % subjectdef.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %hasInstance; |
                          %hasKind; |
                          %hasNarrower; |
                          %hasPart; |
                          %hasRelated; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % subjectdef.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  subjectdef %subjectdef.content;>
<!ATTLIST  subjectdef %subjectdef.attributes;>


<!--                    LONG NAME: Subject Heading                 -->
<!ENTITY % subjectHead.content
                       "((%subjectHeadMeta;)?,
                         (%data.elements.incl; |
                          %subjectdef; |
                          %subjectHead; |
                          %topicref;)*)"
>
<!ENTITY % subjectHead.attributes
              "collection-type
                          (sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               linking
                          (normal)
                                    'normal'
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  subjectHead %subjectHead.content;>
<!ATTLIST  subjectHead %subjectHead.attributes;>


<!--                    LONG NAME: Subject Heading Metadata        -->
<!ENTITY % subjectHeadMeta.content
                       "((%titlealt;)*,
                         (%shortdesc;)?)"
>
<!ENTITY % subjectHeadMeta.attributes
              "%univ-atts;"
>
<!ELEMENT  subjectHeadMeta %subjectHeadMeta.content;>
<!ATTLIST  subjectHeadMeta %subjectHeadMeta.attributes;>


<!--                    LONG NAME: Enumeration definition          -->
<!ENTITY % enumerationdef.content
                       "((%elementdef;)?,
                         (%attributedef;),
                         (%subjectdef;)+,
                         (%defaultSubject;)?,
                         (%data.elements.incl;)*)"
>
<!ENTITY % enumerationdef.attributes
              "%id-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               status
                          (changed |
                           deleted |
                           new |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;"
>
<!ELEMENT  enumerationdef %enumerationdef.content;>
<!ATTLIST  enumerationdef %enumerationdef.attributes;>


<!--                    LONG NAME: Element definition              -->
<!ENTITY % elementdef.content
                       "(%data.elements.incl;)*"
>
<!ENTITY % elementdef.attributes
              "%id-atts;
               name
                          CDATA
                                    #REQUIRED
               outputclass
                          CDATA
                                    #IMPLIED
               status
                          (changed |
                           deleted |
                           new |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED
               translate
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;"
>
<!ELEMENT  elementdef %elementdef.content;>
<!ATTLIST  elementdef %elementdef.attributes;>


<!--                    LONG NAME: Attribute definition            -->
<!ENTITY % attributedef.content
                       "(%data.elements.incl;)*"
>
<!ENTITY % attributedef.attributes
              "%id-atts;
               name
                          CDATA
                                    #REQUIRED
               outputclass
                          CDATA
                                    #IMPLIED
               status
                          (changed |
                           deleted |
                           new |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED
               translate
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;"
>
<!ELEMENT  attributedef %attributedef.content;>
<!ATTLIST  attributedef %attributedef.attributes;>


<!--                    LONG NAME: Default Subject                 -->
<!ENTITY % defaultSubject.content
                       "(%data.elements.incl;)*"
>
<!ENTITY % defaultSubject.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  defaultSubject %defaultSubject.content;>
<!ATTLIST  defaultSubject %defaultSubject.attributes;>


<!--                    LONG NAME: Related Subjects                -->
<!ENTITY % relatedSubjects.content
                       "(%data.elements.incl; |
                         %subjectdef; |
                         %topicref;)*"
>
<!ENTITY % relatedSubjects.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    'family'
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    'normal'
               %univ-atts;"
>
<!ELEMENT  relatedSubjects %relatedSubjects.content;>
<!ATTLIST  relatedSubjects %relatedSubjects.attributes;>


<!--                    LONG NAME: Subject Relationship Table      -->
<!ENTITY % subjectRelTable.content
                       "((%title;)?,
                         (%topicmeta;)?,
                         (%subjectRelHeader;)?,
                         (%subjectRel;)+)"
>
<!ENTITY % subjectRelTable.attributes
              "%topicref-atts-no-toc;
               %univ-atts;"
>
<!ELEMENT  subjectRelTable %subjectRelTable.content;>
<!ATTLIST  subjectRelTable %subjectRelTable.attributes;>


<!--                    LONG NAME: Subject Table Header            -->
<!ENTITY % subjectRelHeader.content
                       "(%subjectRole;)+"
>
<!ENTITY % subjectRelHeader.attributes
              "%univ-atts;"
>
<!ELEMENT  subjectRelHeader %subjectRelHeader.content;>
<!ATTLIST  subjectRelHeader %subjectRelHeader.attributes;>


<!--                    LONG NAME: Subject Table Row               -->
<!ENTITY % subjectRel.content
                       "(%subjectRole;)+"
>
<!ENTITY % subjectRel.attributes
              "%univ-atts;"
>
<!ELEMENT  subjectRel %subjectRel.content;>
<!ATTLIST  subjectRel %subjectRel.attributes;>


<!--                    LONG NAME: Subject Role                    -->
<!ENTITY % subjectRole.content
                       "(%data.elements.incl; |
                         %subjectdef; |
                         %topicref;)*"
>
<!ENTITY % subjectRole.attributes
              "%topicref-atts;
               %univ-atts;"
>
<!ELEMENT  subjectRole %subjectRole.content;>
<!ATTLIST  subjectRole %subjectRole.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  subjectScheme   class CDATA "- map/map subjectScheme/subjectScheme ">
<!ATTLIST  schemeref      class CDATA "- map/topicref subjectScheme/schemeref ">
<!ATTLIST  hasNarrower    class CDATA "- map/topicref subjectScheme/hasNarrower ">
<!ATTLIST  hasKind        class CDATA "- map/topicref subjectScheme/hasKind ">
<!ATTLIST  hasPart        class CDATA "- map/topicref subjectScheme/hasPart ">
<!ATTLIST  hasInstance    class CDATA "- map/topicref subjectScheme/hasInstance ">
<!ATTLIST  hasRelated     class CDATA "- map/topicref subjectScheme/hasRelated ">
<!ATTLIST  enumerationdef   class CDATA "- map/topicref subjectScheme/enumerationdef ">
<!ATTLIST  elementdef     class CDATA "- topic/data subjectScheme/elementdef ">
<!ATTLIST  attributedef   class CDATA "- topic/data subjectScheme/attributedef ">
<!ATTLIST  defaultSubject   class CDATA "- map/topicref subjectScheme/defaultSubject ">
<!ATTLIST  subjectHead    class CDATA "- map/topicref subjectScheme/subjectHead ">
<!ATTLIST  subjectHeadMeta   class CDATA "- map/topicmeta subjectScheme/subjectHeadMeta ">
<!ATTLIST  subjectdef     class CDATA "- map/topicref subjectScheme/subjectdef ">
<!ATTLIST  relatedSubjects   class CDATA "- map/topicref subjectScheme/relatedSubjects ">
<!ATTLIST  subjectRelTable   class CDATA "- map/reltable subjectScheme/subjectRelTable ">
<!ATTLIST  subjectRelHeader   class CDATA "- map/relrow subjectScheme/subjectRelHeader ">
<!ATTLIST  subjectRel     class CDATA "- map/relrow subjectScheme/subjectRel ">
<!ATTLIST  subjectRole    class CDATA "- map/relcell subjectScheme/subjectRole ">

<!-- ================== End of DITA Subject Scheme Map Type ==================== -->
 