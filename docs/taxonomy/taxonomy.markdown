---
layout: default
title: Taxonomy
nav_order: 50
has_children: true
---

# Taxonomies of Evaluations

A [_taxonomy_]({{site.glossaryurl}}/#taxonomy) is of evaluations is useful for grouping them hierarchically by interest area, so that people to see relationships and explore evaluations that are available in their areas of interest, without having to &ldquo;digest&rdquo; all available evaluations. For a given area of interest, [_benchmarks_]({{site.glossaryurl}}/#benchmark) aggregate one or more evaluations to measure overall behavior in that area.

A long-term goal of this project is to build a global taxonomy covering the full spectrum of possible evaluations. 

## Why Build a Taxonomy?

Today’s evaluation landscape poses multiple challenges for the users we described in [user personae]({{site.baseurl}}/user-personae/user-personae/).

In particular, new users of AI and new developers of AI applications struggle to understand which safety and other concerns they should worry about, and how to measure them. Which benchmarks are appropriate for their needs? Which ones are “best” among the available options? 

A standard, global taxonomy of all evaluations would be helpful for creating shared, accessible knowledge, and to facilitate discovery and adoption of suitable tools. However, such a taxonomy would be difficult to create. So, we will opportunistically explore building this taxonomy as opportunities present themselves.

However, some sections of a potential global taxonomy have been extensively explored by research teams, especially in the general area of risks and harms. Here are some of those projects:

* MLCommons [Taxonomy of Hazard](https://arxiv.org/html/2404.12241v1){:target="mlc-th"}
* IBM [AI Risk Atlas](https://www.ibm.com/docs/en/watsonx/saas?topic=ai-risk-atlas){:target="ibm-ai"}
* IBM [`unitxt` Catalog](https://www.unitxt.ai/en/latest/catalog/catalog.__dir__.html){:target="unitxt-catalog"} (It also has other kinds of evaluations.)
* MIT [AI Risk Repository](https://airisk.mit.edu/){:target="mit-ai"}
* NIST [Risk Management Framework](https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF/Foundational_Information/3-sec-characteristics){:target="nist-rmf"}
* Stanford [CRFM HELM](https://crfm.stanford.edu/helm/){:target="helm"}

## An AI Alliance Taxonomy - A First Pass

EleutherAI’s [LM Evaluation Harness](https://www.eleuther.ai/projects/large-language-model-evaluation){:target="lm-site"}, which is discussed more fully in the [Evaluation Reference Stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"} project, has a comprehensive set of included evaluations. 

We have extracted the following, _very rough and incomplete_ draft of a possible taxonomy from this set of evaluations. Subsequent efforts will unify this taxonomy with the sources mentioned above, clarify terminology, and expand on under-specified areas.

* **Language Understanding Tasks:** Evaluations designed to test a language model's ability to comprehend and process natural language. These tasks assess how well a model can interpret the meaning, context, relationships, and implications of textual inputs, which are fundamental to effective natural language processing (NLP)
    * **Reading Comprehension:** Tasks that require the model to understand a given text and answer questions based on it.
      * **afrixnli:** Tests natural language inference capabilities in African languages.
      * **agieval:** Evaluates general language understanding and reasoning abilities.
      * **basque_bench:** A collection of tasks in Basque encompassing various evaluation areas.
      * **blimp:** Tests grammatical phenomena to evaluate language model's linguistic capabilities.
      * **catalan_bench:** A collection of tasks in Catalan encompassing various evaluation areas.
      * **ceval:** Tasks that evaluate language understanding and reasoning in an educational context.
      * **cmmlu:** Multi-subject multiple-choice question tasks for comprehensive academic assessment.
      * **eus_proficiency:** Tasks designed to test proficiency in the Basque language across various topics.
      * **eus_reading:** Reading comprehension tasks specifically designed for the Basque language.
      * **french_bench:** A set of tasks designed to assess language model performance in French.
      * **galician_bench:** A collection of tasks in Galician encompassing various evaluation areas.
      * **glianorex:** Tasks focused on evaluating language models' performance in the Galician language.
      * **kobest:** A collection of tasks designed to evaluate understanding in the Korean language.
      * **model_written_evals:** Assesses model-generated responses to evaluate coherence and relevance.
      * **noticia:** Evaluates language understanding and generation capabilities in the Spanish language.
      * **portuguese_bench:** A collection of tasks designed to evaluate language model performance in Portuguese.
      * **prost:** A reading comprehension task that requires understanding of pronoun resolution.
      * **polemo2:** Sentiment analysis and emotion detection tasks based on Polish language data.
      * **squad:** Stanford Question Answering Dataset for answering questions based on a passage.
      * **squad_completion:** A variant of the SQuAD question-answering task designed for zero-shot evaluation of small language models.
      * **spanish_bench:** A collection of tasks in Spanish encompassing various evaluation areas.
      * **scrolls:** Evaluates long-range language modeling and understanding by requiring models to process extended contexts.
      * **triviaqa:** Question answering dataset with trivia questions and supporting evidence.
      * **natural_questions:** Google's dataset for answering questions based on real user queries.
      * **race:** Reading comprehension dataset based on middle and high school English exams.
      * **quac:** Question answering in conversational contexts.
      * **squadv2:** Evaluates reading comprehension by requiring models to answer questions based on Wikipedia articles, including unanswerable questions.
      * **swde:** Evaluates structured web data extraction capabilities, focusing on the ability to extract information from web pages.
      * **newsqa:** Question answering dataset derived from news articles.
      * **drop:** Dataset for discrete reasoning over paragraphs, including numerical and logical reasoning.
      * **coqa:** Conversational Question Answering dataset with multi-turn interactions.
      * **searchqa:** Question answering dataset created using search engine results.
      * **textbookqa:** Question answering dataset derived from textbook content.
      * **openbookqa:** Open book question answering dataset for science and general knowledge.
      * **boolq:** Boolean Questions dataset focused on yes/no comprehension tasks.
      * **narrativeqa:** Question answering based on summaries of stories or movies.
      * **qangaroo:** Multi-hop question answering dataset requiring reasoning across documents.
      * **hotpotqa:** Multi-hop question answering dataset involving reasoning over multiple sources.
      * **webqs:** Evaluates the model's ability to answer questions based on web search queries, testing information retrieval and comprehension.
      * **wikihop:** Multi-hop question answering dataset derived from Wikipedia articles.
      * **wikitext:** Assesses language modeling capabilities using text extracted from Wikipedia articles.
      * **wmdp:** Evaluates the model's proficiency in document processing tasks, focusing on understanding and generating structured documents.
      * **reclor:** Reading comprehension dataset focused on logical reasoning.
      * **logiqa:** Logical reasoning reading comprehension dataset.
    * **Textual Entailment (Natural Language Inference):** Determines relationships between sentence pairs (e.g., entailment, contradiction, or neutrality).
      * **snli:** Stanford Natural Language Inference dataset focusing on entailment, contradiction, and neutral relationships between sentence pairs.
      * **mnli:** Multi-Genre Natural Language Inference dataset, an extension of SNLI with examples from diverse genres.
      * **rte:** Recognizing Textual Entailment dataset for determining entailment between pairs of sentences.
      * **qnli:** Question Natural Language Inference dataset, converted from SQuAD to test entailment relationships between questions and answers.
      * **wnli:** Winograd Natural Language Inference dataset, focusing on pronoun disambiguation in an entailment context.
      * **scitail:** Science entailment dataset created from science questions and related web sentences.
      * **anli:** Adversarial Natural Language Inference dataset designed to challenge models with harder entailment cases.
      * **xnli:** Assesses cross-lingual natural language inference capabilities, testing understanding of entailment and contradiction across languages.
      * **xnli_eu:** Evaluates natural language inference in Basque, focusing on entailment and contradiction detection.
    * **Paraphrase Detection:** Identifies if two sentences have the same meaning or are rephrasings of each other.
      * **mrpc:** Microsoft Research Paraphrase Corpus, which evaluates the model's ability to identify semantically equivalent sentence pairs.
      * **paws:** Paraphrase Adversaries from Word Scrambling, a dataset testing paraphrase detection with challenging word-order variations.
* **Reasoning Tasks:** Evaluations designed to assess a language model's ability to apply logical, deductive, inductive, or commonsense reasoning to solve problems or answer questions. These tasks go beyond basic language comprehension by requiring models to infer, deduce, and reason about implicit relationships, patterns, or structures within textual or structured inputs.
    * **Commonsense Reasoning:** Evaluations designed to test a model's ability to apply everyday knowledge and logical reasoning to answer questions or make decisions. These tasks assess the model’s understanding of concepts and relationships that are typically intuitive to humans but not explicitly stated in the input data.
      * **arc_mt:** Evaluates complex reasoning over a diverse set of multiple-choice questions.
      * **babi:** Designed as question and answering challenges based on simulated stories.
      * **bbh:** Tasks focused on deep semantic understanding through hypothesization and reasoning.
      * **commonsenseqa:** A multiple-choice question answering dataset testing general world knowledge and commonsense reasoning.
      * **commonsense_qa:** A multiple-choice QA dataset for measuring commonsense knowledge.
      * **copal_id:** Indonesian causal commonsense reasoning dataset that captures local nuances.
      * **hellaswag:** A dataset for commonsense reasoning, requiring models to predict the most plausible continuation of a scenario.
      * **piqa:** Physical Interaction Question Answering dataset focusing on everyday physical commonsense.
      * **siqa:** Social Interaction Question Answering dataset testing commonsense reasoning about social interactions, including intentions and emotions.
      * **xcopa:** Evaluates causal commonsense reasoning across multiple languages.
    * **Mathematical and Logical Reasoning:** Evaluations designed to test a model's ability to solve problems requiring numerical computation, pattern recognition, logical inference, and structured reasoning. These tasks assess a model's capacity to handle quantitative data, deduce relationships, and apply rules or logic to reach conclusions.
      * **afrimgsm:** Evaluates mathematical reasoning abilities in African languages.
      * **arithmetic:** Assesses numerical computations and arithmetic reasoning abilities.
      * **aqua:** Algebra question answering dataset focused on reasoning through equations.
      * **asdiv:** Focuses on arithmetic and mathematical reasoning challenges.
      * **csatqa:** Tasks related to SAT and other standardized testing questions for academic assessment.
      * **gsm8k:** Grade school math problems dataset testing arithmetic and reasoning skills.
      * **gsm_plus:** A benchmark of grade school math problems aimed at evaluating reasoning capabilities.
      * **hendrycks_math:** Mathematical problem-solving tasks to test numerical reasoning and problem-solving skills.
      * **mathqa:** A dataset for solving complex math questions with logical reasoning.
      * **minerva_math:** Tests advanced mathematical problem-solving skills.
      * **svamp:** A math word problem dataset requiring multi-step reasoning to solve.
    * **Causal and Temporal Reasoning:** Evaluations that test a model's ability to understand and reason about cause-effect relationships and the sequencing of events over time. These tasks require the model to infer, predict, or explain the connections between actions, outcomes, and their temporal or causal dependencies.
      * **copa:** Choice of Plausible Alternatives dataset, testing causal reasoning by selecting the most plausible cause or effect.
      * **reclor:** Logical reasoning dataset focused on multiple-choice reasoning in academic texts.
      * **logiqa:** Logical reasoning dataset designed for evaluating deductive reasoning capabilities.
      * **ifeval:** Evaluates instruction-following capabilities of language models using verifiable instructions.
      * **mc_taco:** Evaluates understanding of temporal commonsense by assessing the likelihood of events occurring at specific times.
    * **Logical Deduction:** Tasks that test the model's capability for logical reasoning and inference.
      * **anli:** Challenges the model to choose the most plausible explanation for a given scenario.
      * **hellaswag:** Evaluates the model's ability to predict the most likely continuation of a given situation, requiring abductive reasoning.
      * **arc:** Tests the model's scientific reasoning and ability to generalize from specific instances.
      * **piqa:** Assesses the model's understanding of physical commonsense reasoning.
      * **logiqa:** Evaluates the model's ability to perform logical reasoning based on given premises.
      * **logiqa2:** An extension of LogiQA, focusing on more complex logical reasoning scenarios.
      * **unscramble:** Tests the model's ability to unscramble words or sentences, assessing language manipulation skills.
* **Knowledge-Based Tasks:** Evaluations designed to test a model's ability to retrieve, comprehend, and utilize factual, contextual, or domain-specific information. These tasks assess a model's capacity to access and apply stored knowledge or external data to answer questions, fill in gaps, or complete tasks that require explicit or inferred knowledge.
    * **Fact-Based Question Answering:** Tasks involving questions that have definitive answers, testing the model's ability to retrieve factual informatio.
      * **afrimmlu:** Assesses multi-choice knowledge-based question answering in African languages.
      * **bertaqa:** Local Basque cultural trivia QA tests in English and Basque languages.
      * **eus_exams:** Tasks based on various professional and academic exams in the Basque language.
      * **eus_trivia:** Trivia and knowledge testing tasks in the Basque language.
      * **gpqa:** Tasks designed for general public question answering and knowledge verification.
      * **haerae:** Tasks focused on assessing detailed factual and historical knowledge.
      * **headqa:** A high-level education-based question answering dataset to test specialized knowledge.
      * **kmmlu:** Knowledge-based multi-subject multiple-choice questions for academic evaluation in Korean.
      * **kormedmcqa:** Medical question-answering tasks in Korean to test specialized domain knowledge.
      * **med_concepts_qa:** Assesses knowledge of medical concepts through question-answering tasks.
      * **medmcqa:** Evaluates medical multiple-choice question answering abilities, focusing on medical entrance exam questions.
      * **medqa:** Tests medical question-answering skills using professional medical board exam questions.
      * **mela:** Assesses language understanding and reasoning in the medical domain.
      * **mmlu_pro:** Assesses professional-level knowledge across various subjects.
      * **nq_open:** Assesses open-domain question answering abilities using the Natural Questions dataset.
      * **paloma:** A comprehensive benchmark for evaluating open language models across diverse domains, including niche communities and mental health forums.
      * **pubmedqa:** A biomedical question answering dataset focusing on research articles from PubMed.
      * **qasper:** A dataset for question answering on scientific research papers.
      * **sciq:** Assesses scientific question-answering abilities, focusing on elementary and middle school science.
      * **triviaqa:** Evaluates the model's ability to answer trivia questions by retrieving factual information.
      * **squad:** Assesses the model's proficiency in answering questions based on passages from Wikipedia articles.
      * **natural_questions:** Tests the model's capability to provide short and long answers to real-world questions using information from Wikipedia.
      * **web_questions:** Measures the model's performance in answering questions derived from Google search queries, focusing on factual accuracy.
      * **openbookqa:** Challenges the model to answer elementary-level science questions, requiring retrieval of scientific facts.
      * **tmlu:** Traditional Chinese Massive Multitask Language Understanding dataset, comprising multiple-choice questions across various subjects.
      * **tmmluplus:** An extended set of tasks under the TMMLU framework for broader academic assessments in Traditional Chinese.
      * **truthfulqa:** Evaluates the model's ability to generate truthful and informative answers to questions.
      * **turkishmmlu:** Localized Turkish version of MMLU with multiple-choice questions from various subjects.
    * **Cloze Tasks:** Fill-in-the-blank tasks that measure the model's knowledge of facts or language structure.
      * **lambada:** Assesses the model's ability to predict the final word of a passage, focusing on understanding context and language structure.
      * **lambada_cloze:** Cloze-style LAMBADA dataset focusing on predicting the last word of a passage.
      * **cloze:** Evaluates the model's proficiency in filling in missing words within a passage, testing knowledge of language structure and factual information.
      * **wsc:** Tests the model's ability to resolve pronoun references in sentences, requiring understanding of language structure and context.
      * **winogrande:** Challenges the model to choose the correct referent in sentences with ambiguous pronouns, measuring commonsense reasoning and language understanding.
      * **cbt:** Evaluates the model's ability to predict missing words in children's books passages, focusing on understanding narrative context and language structure.
* **Code and Programming Tasks:** Evaluations designed to test a model's ability to understand, generate, complete, and debug code. These tasks assess a model's proficiency in handling programming-related queries, translating natural language descriptions into code, and solving algorithmic problems.
    * **Code Completion and Understanding:** Tasks that involve code snippets and require the model to complete or understand programming language.
      * **code_x_glue:** Tasks that involve understanding and generating code across multiple programming languages.
      * **humaneval:** Evaluates the model's ability to generate correct Python functions based on docstring specifications.
      * **mbpp:** Measures the model's proficiency in generating and understanding Python code by providing prompts and requiring correct implementations.
      * **conala:** Assesses the model's ability to translate natural language descriptions into correct code snippets.
      * **code_trans:** Evaluates the model's skill in translating code between different programming languages.
      * **apps:** Tests the model's capability to solve introductory programming problems, necessitating correct and efficient code generation.
    * **Bug Detection and Fixing:** Evaluations focused on identifying errors in cod.
      * **humaneval:** Evaluates the model's ability to generate correct Python functions based on docstring specifications, indirectly assessing error detection through code generation accuracy.
      * **mbpp:** Measures the model's proficiency in generating and understanding Python code by providing prompts and requiring correct implementations, highlighting error detection capabilities.
      * **conala:** Assesses the model's ability to translate natural language descriptions into correct code snippets, emphasizing error-free code generation.
      * **code_trans:** Evaluates the model's skill in translating code between different programming languages, requiring accurate syntax and semantics to avoid errors.
      * **apps:** Tests the model's capability to solve introductory programming problems, necessitating correct and efficient code generation.
* **Dialogue and Interaction Tasks:** Evaluations designed to assess a model's ability to engage in coherent, contextually appropriate, and meaningful interactions with users or other systems. These tasks focus on conversational capabilities, including understanding multi-turn contexts, generating relevant and accurate responses, and maintaining conversational flow.
    * **Conversational AI:** Tasks involving multi-turn dialogue or responses that require contextual understandin.
      * **samsum:** Evaluates the model's ability to summarize dialogues, focusing on understanding and condensing multi-turn conversations.
      * **dialogue_nli:** Assesses the model's understanding of dialogue by testing its ability to determine entailment, contradiction, or neutrality between dialogue pairs.
      * **empathetic_dialogues:** Tests the model's capability to generate empathetic responses in conversations, emphasizing emotional understanding and coherence.
      * **fld:** Tasks involving free-form and directed dialogue understanding.
      * **mutual:** Tests multi-turn dialogue understanding and reasoning.
      * **persona_chat:** Challenges the model to engage in coherent conversations by incorporating persona-based information, requiring contextual understanding.
      * **daily_dialog:** Evaluates the model's proficiency in generating coherent dialogues based on everyday conversational scenarios, necessitating contextual comprehension.
    * **Dialogue Completion:** Evaluations where the model completes or generates dialogue with coherenc.
      * **dialogue_nli:** Evaluates the model's understanding of dialogue by testing its ability to determine entailment, contradiction, or neutrality between dialogue pairs.
      * **Empathetic_dialogues:** Assesses the model's capability to generate empathetic responses in conversations, focusing on emotional understanding and coherence.
      * **persona_chat:** Tests the model's ability to engage in coherent conversations by incorporating persona-based information.
      * **daily_dialog:** Evaluates the model's proficiency in generating coherent dialogues based on everyday conversational scenarios.
* **Creative and Open-Ended Generation:** Evaluations designed to test a model’s ability to produce imaginative, original, and contextually appropriate content in response to open-ended prompts. These tasks assess the model’s ability to generate outputs that are not only syntactically correct but also exhibit qualities like coherence, novelty, and stylistic appropriateness.
    * **Story Generation:** Tasks where the model must continue or create a coherent store.
      * **alghafa:** Assesses language generation and fluency in Arabic.
      * **storycloze:** Evaluates the model's ability to choose the correct ending for a four-sentence story, testing narrative understanding and coherence.
      * **hellaswag:** Assesses commonsense reasoning by requiring the model to predict the most plausible continuation of a given scenario.
      * **lambada:** Tests the model's ability to predict the final word of a passage, emphasizing the importance of context and coherence.
      * **writing_prompts:** Challenges the model to generate creative and coherent stories based on provided prompts.
      * **swag:** Tests commonsense reasoning by requiring models to choose the most plausible continuation of a given scenario.
      * **xstorycloze:** Tests the model's ability to predict the correct ending of a story in multiple languages, assessing narrative understanding.
    * **Poetry and Art:** Evaluations that assess the model's ability to generate creative content.
      * **writing_prompts:** Evaluates the model's ability to generate coherent and creative stories based on given prompts.
      * **poetry_generation:** Assesses the model's capability to compose poems with creativity and adherence to poetic structures.
      * **story_completion:** Tests the model's skill in continuing or completing a given narrative in a creative and coherent manner.
      * **dialogue_generation:** Measures the model's proficiency in generating engaging and contextually appropriate dialogues.
      * **creative_qa:** Challenges the model to provide imaginative and creative answers to open-ended questions.
* **Ethical and Bias Testing:** Evaluations designed to assess a language model's fairness, safety, and ethical behavior. These tasks measure whether the model generates or amplifies biases, stereotypes, or harmful content and ensure it treats all groups and scenarios equitably.
    * **Bias Detection:** Tasks designed to measure inherent biases in language models related to gender, race, or other sensitive topic.
      * **crows_pairs:** Assesses social biases by comparing sentence pairs with differing implications for various demographic groups.
      * **stereoset:** Evaluates stereotypical biases across categories such as gender, race, religion, and profession.
      * **winogender:** Tests gender bias in pronoun resolution within sentences, focusing on gender-neutral contexts.
      * **bias_in_bios:** Analyzes biases in occupational classifications based on biographical sentences.
      * **broad_coverage_bias:** Measures biases across a wide range of demographic attributes and social groups.
      * **toxigen:** Tasks designed to evaluate language models on their propensity to generate toxic content.
    * **Fairness Evaluation:** Focused tasks that test how fairly a model treats different groups or phrases content.
      * **crows_pairs:** Assesses social biases by comparing sentence pairs with differing implications for various demographic groups.
      * **eq_bench:** Tasks focused on equality and ethics in question answering and decision-making.
      * **hendrycks_ethics:** Tasks designed to evaluate the ethical reasoning capabilities of models.
      * **stereoset:** Evaluates stereotypical biases across categories such as gender, race, religion, and profession.
      * **winogender:** Tests gender bias in pronoun resolution within sentences, focusing on gender-neutral contexts.
      * **bias_in_bios:** Analyzes biases in occupational classifications based on biographical sentences.
      * **broad_coverage_bias:** Measures biases across a wide range of demographic attributes and social groups.
      * **realtoxicityprompts:** Evaluates the propensity of language models to generate toxic content when prompted.
* **Multimodal Tasks:** Tasks that require interpreting and responding based on inputs in multiple format.
    * **Text-Image Combination:** Tasks that require interpreting and responding based on both textual and visual input.
      * **mmmu:** Multimodal Multiple-Choice Understanding task that evaluates a model's ability to comprehend and respond to text-image inputs.
      * **vqa:** Visual Question Answering task assessing the model's capability to answer questions based on image content.
      * **image_captioning:** Task that evaluates the model's ability to generate descriptive captions for given images.
      * **visual_entailment:** Visual Entailment task testing the model's reasoning about the relationship between textual statements and images.
* **Benchmark Aggregates:** Evaluation tasks that combine multiple subtasks or datasets to provide a holistic and comprehensive measure of a language model's capabilities. These aggregates serve as standardized evaluation suites, enabling consistent comparison across models and tasks.
    * **Composite Benchmarks:** Tasks that combine various subtasks to provide a more holistic evaluation.
      * **superglue:** An advanced benchmark suite combining diverse NLP tasks for language understanding and reasoning.
      * **glue:** A general evaluation suite for various natural language understanding tasks like sentiment analysis and inference.
      * **bigbench:** A collaborative benchmark with a wide range of diverse and complex tasks to evaluate large language models.
      * **bigbench_hard:** A subset of BIG-bench tasks focusing on more challenging and complex problems.
      * **mmlu:** Massive Multitask Language Understanding benchmark for evaluating multi-domain knowledge across 57 subjects.
      * **okapi:** A suite of tasks designed to evaluate language models across various domains and languages.
      * **inverse_scaling:** Assesses tasks where larger language models perform worse, highlighting inverse scaling phenomena.
      * **tinyBenchmarks:** A collection of scaled-down versions of popular benchmarks designed to evaluate large language models with fewer examples.
    * **Leaderboards and Comprehensive Benchmarks:** Used for broad, multi-task evaluation suites such as EleutherAI's or Hugging Face's leaderboard.
      * **bigbench:** A collaborative benchmark with a wide range of diverse and complex tasks to evaluate large language models.
      * **bigbench_hard:** A subset of BIG-bench tasks focusing on more challenging and complex problems.
      * **leaderboard:** Task group used by Hugging Face's Open LLM Leaderboard v2 for standardized evaluation.
      * **mmlu:** Massive Multitask Language Understanding benchmark for evaluating multi-domain knowledge across 57 subjects.
      * **superglue:** An advanced benchmark suite combining diverse NLP tasks for language understanding and reasoning.
      * **glue:** A general evaluation suite for various natural language understanding tasks like sentiment analysis and inference.
      * **pile:** A large-scale dataset for language modeling, consisting of diverse text sources.
      * **pile_10k:** A subset of the Pile dataset, containing the first 10,000 elements, useful for debugging models.
* **Low-Resource and Multilingual Tasks:** Evaluations designed to assess a model's ability to perform in languages and domains with limited data availability or in multiple languages simultaneously. These tasks challenge models to generalize and perform effectively in diverse linguistic and cultural settings, including under-represented languages and low-resource domains.
    * **Cross-Lingual Evaluation:** Tasks that test the model's ability to perform in languages other than English.
      * **tydiqa:** A question-answering dataset covering 11 typologically diverse languages.
      * **xquad:** A cross-lingual question-answering dataset extending SQuAD to 10 languages.
      * **mlqa:** A benchmark for multilingual question answering across 7 languages.
      * **lambada_multilingual:** Tests the ability to predict the last word of a sentence in multiple languages.
      * **hellaswag_multilingual:** A commonsense reasoning benchmark in multiple languages, requiring plausible scenario continuation.
      * **mmlusr:** Evaluates understanding and reasoning in multiple languages.
      * **qa4mre:** Question answering tasks that require machine reading comprehension across multiple languages.
      * **xwinograd:** A multilingual version of the Winograd Schema Challenge, testing pronoun resolution.
      * **mmlu:** Includes a localized Arabic version, evaluating multi-domain knowledge and reasoning.
      * **arabic_leaderboard_light:** Light version of Arabic tasks for evaluating comprehension and cultural understanding.
      * **arabic_leaderboard_complete:** Comprehensive Arabic tasks assessing models on understanding Arabic culture and heritage.
      * **americasnli:** A natural language inference dataset for Indigenous languages of the Americas.
      * **masakhaner:** A named entity recognition dataset for African languages.
      * **translation:** Assesses the model's ability to translate text between different languages.
      * **wmt2016:** Assesses machine translation performance using datasets from the WMT 2016 shared tasks.
    * **Low-Resource Tasks:** Benchmarks created for under-represented languages or domains.
      * **basqueglue:** Tasks designed to evaluate language understanding in Basque, an under-represented language.
      * **belebele:** Language understanding tasks in a variety of under-represented languages and scripts.
      * **arabicmmlu:** Localized Arabic version of MMLU with multiple-choice questions from 40 subjects.
      * **aexams:** Tasks in Arabic related to various academic exams covering a range of subjects.
      * **aclue:** Tasks focusing on ancient Chinese language understanding and cultural aspects.
      * **lingoly:** Challenging logical reasoning benchmark in low-resource languages with controls for memorization.
      * **tydiqa:** A typologically diverse question-answering dataset covering 11 under-represented languages.
      * **xquad:** A cross-lingual question-answering dataset extending SQuAD to 10 under-represented languages.
      * **mlqa:** Multilingual Question Answering benchmark covering 7 under-represented languages.
      * **americasnli:** A natural language inference dataset for Indigenous languages of the Americas.
      * **masakhaner:** A named entity recognition dataset for African languages.

